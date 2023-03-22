/**
 * @file    tree_mesh_builder.cpp
 *
 * @author  SEBASTIAN KRAJNAK <xkrajn05@stud.fit.vutbr.cz>
 *
 * @brief   Parallel Marching Cubes implementation using OpenMP tasks + octree early elimination
 *
 * @date    18.12.2021
 **/

#include <iostream>
#include <math.h>
#include <limits>

#include "tree_mesh_builder.h"

TreeMeshBuilder::TreeMeshBuilder(unsigned gridEdgeSize)
    : BaseMeshBuilder(gridEdgeSize, "Octree")
{

}

unsigned TreeMeshBuilder::marchCubes(const ParametricScalarField &field)
{
    Vec3_t<float> startPos(0.0f, 0.0f, 0.0f);
    unsigned totalTriangles = 0;

    #pragma omp parallel shared(totalTriangles, field)
    #pragma omp single nowait
    totalTriangles = octree(startPos, field, mGridSize);
    
    return totalTriangles;
}

float TreeMeshBuilder::evaluateFieldAt(const Vec3_t<float> &pos, const ParametricScalarField &field)
{
    const Vec3_t<float> *pPoints = field.getPoints().data();
    const unsigned count = unsigned(field.getPoints().size());
    float value = std::numeric_limits<float>::max();

    for(unsigned i = 0; i < count; ++i)
    {
        float distanceSquared  = (pos.x - pPoints[i].x) * (pos.x - pPoints[i].x);
        distanceSquared       += (pos.y - pPoints[i].y) * (pos.y - pPoints[i].y);
        distanceSquared       += (pos.z - pPoints[i].z) * (pos.z - pPoints[i].z);

        value = std::min(value, distanceSquared);
    }
    return sqrt(value);
}

void TreeMeshBuilder::emitTriangle(const BaseMeshBuilder::Triangle_t &triangle)
{
    #pragma omp critical
    mTriangles.push_back(triangle);
}

unsigned TreeMeshBuilder::octree(const Vec3_t<float> &pos, const ParametricScalarField &field, unsigned gridSize)
{
    const unsigned newGridSize = gridSize / 2;
    unsigned trianglesCount = 0;
    unsigned totalTrianglesCount = 0;
    
    if( isEmpty(pos, field, gridSize) ){
        return 0;
    }
    else if(gridSize > CUT_OFF){
        for(size_t i = 0; i < 8; i++){
            #pragma omp task shared(totalTrianglesCount)
            {
                Vec3_t<float> vertexNormPos = sc_vertexNormPos[i];

                Vec3_t<float> newCubeOffset(
                    pos.x + vertexNormPos.x * newGridSize,    
                    pos.y + vertexNormPos.y * newGridSize,
                    pos.z + vertexNormPos.z * newGridSize
                );

                trianglesCount = octree(newCubeOffset, field, newGridSize);

                #pragma omp atomic update
                totalTrianglesCount += trianglesCount;
            }
        }
        #pragma omp taskwait
        return totalTrianglesCount;
    }
    else{
        return buildCube(pos, field);
    }
}

bool TreeMeshBuilder::isEmpty(const Vec3_t<float> &pos, const ParametricScalarField &field, float gridSize)
{
    static const float sqrtValue = sqrtf(3.f) / 2.f;
    const unsigned newGridSize = gridSize / 2;

    const Vec3_t<float> middleOfCube(    
        (pos.x + newGridSize) * mGridResolution,    
        (pos.y + newGridSize) * mGridResolution,
        (pos.z + newGridSize) * mGridResolution
    );
    const float blockMiddleValue = evaluateFieldAt(middleOfCube, field);

    return blockMiddleValue > mIsoLevel + (sqrtValue * gridSize * mGridResolution);
}

