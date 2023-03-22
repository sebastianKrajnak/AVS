/**
 * @file LineMandelCalculator.cc
 * @author Sebastian Krajnak <xkrajn05@stud.fit.vutbr.cz>
 * @brief Implementation of Mandelbrot calculator that uses SIMD paralelization over lines
 * @date 2021-11-09
 */
#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

#include <stdlib.h>

#include "LineMandelCalculator.h"

LineMandelCalculator::LineMandelCalculator (unsigned matrixBaseSize, unsigned limit) : 
	BaseMandelCalculator(matrixBaseSize, limit, "LineMandelCalculator")
{
	data = (int *)(_mm_malloc(height * width * sizeof(int), 64));
	realVals = (float *)(_mm_malloc(width * sizeof(float),64));
	imagVals = (float *)(_mm_malloc(width * sizeof(float),64));
}

LineMandelCalculator::~LineMandelCalculator()
{
	_mm_free(data);
	_mm_free(realVals);
	_mm_free(imagVals);
	
	data = NULL;
	realVals= NULL;
	imagVals = NULL;
}

int *LineMandelCalculator::calculateMandelbrot() 
{
	int *pdata = data;
	float *zReal = realVals;
	float *zImag = imagVals;
	
	for (int i = 0; i < height; i++)
	{
		for (int j = 0; j < width; j++){	//fills the values of c for each column before first iteration
			zImag[j] = y_start + i * dy; // current imaginary value
			zReal[j] = x_start + j * dx; // current real value
		}

		for (int k = 0; k < limit; ++k)
		{
			#pragma omp simd aligned(pdata, zReal, zImag: 64) simdlen(512)
			for (int j = 0; j < width; j++){
				float x = x_start + j * dx; // current real value
				float y = y_start + i * dy; // current imaginary value

				float r2 = zReal[j] * zReal[j];
				float i2 = zImag[j] * zImag[j];

				if (r2 + i2 < 4.0f)
					pdata[i * width + j] = k;

				zImag[j] = 2.0f * zReal[j] * zImag[j] + y;
				zReal[j] = r2 - i2 + x;
			}
		}
	}
	return data;
}
