/**
 * @file BatchMandelCalculator.cc
 * @author Sebastián Krajňák <xkrajn05@stud.fit.vutbr.cz>
 * @brief Implementation of Mandelbrot calculator that uses SIMD paralelization over small batches
 * @date 2021-11-09
 */

#include <iostream>
#include <string>
#include <vector>
#include <algorithm>

#include <stdlib.h>
#include <stdexcept>

#include "BatchMandelCalculator.h"

BatchMandelCalculator::BatchMandelCalculator (unsigned matrixBaseSize, unsigned limit) :
	BaseMandelCalculator(matrixBaseSize, limit, "BatchMandelCalculator")
{
	data = (int *)(_mm_malloc(height * width * sizeof(int), 64));
	realVals = (float *)(_mm_malloc(width * sizeof(float),64));
	imagVals = (float *)(_mm_malloc(width * sizeof(float),64));
}

BatchMandelCalculator::~BatchMandelCalculator() {
	_mm_free(data);
	_mm_free(realVals);
	_mm_free(imagVals);

	data = NULL;
	realVals= NULL;
	imagVals = NULL;
}


int * BatchMandelCalculator::calculateMandelbrot () {
	int *pdata = data;
	float *zReal = realVals;
	float *zImag = imagVals;
	const int TILE = 16;
	int widthInt = (int)width;
	
	for (int iTile = 0; iTile < height /  TILE; iTile++)
	{
		for(int iLocal = 0; iLocal < TILE; iLocal++){
			int i = iTile * TILE + iLocal;
			int counter = 0;

			#pragma omp simd aligned(zImag, zReal: 64)
			for (int j = 0; j < widthInt; j++){	//fills the values of c for each column before first iteration
				zImag[j] = y_start + i * dy; // current imaginary value
				zReal[j] = x_start + j * dx; // current real value
				data[i * widthInt + j] = limit;
			}

			for (int k = 0; k < limit; ++k)
			{
				#pragma omp simd aligned(pdata, zReal, zImag: 64) simdlen(64) reduction(&&:counter)
				for (int j = 0; j < widthInt; j++){

					float x = x_start + j * dx; // current real value
					float y = y_start + i * dy; // current imaginary value

					float r2 = zReal[j] * zReal[j];
					float i2 = zImag[j] * zImag[j];

					if (r2 + i2 > 4.0f && counter != widthInt && pdata[i * widthInt + j] == limit){
						pdata[i * widthInt + j] = k;
						counter++;
					}

					zImag[j] = 2.0f * zReal[j] * zImag[j] + y;
					zReal[j] = r2 - i2 + x;
				}
				if(counter == widthInt)
					break;
			}
		}
	}
	return data;
}