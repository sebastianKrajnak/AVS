/**
 * @file    tree_mesh_builder.h
 *
 * @author  SEBASTIAN KRAJNAK <xkrajn05@stud.fit.vutbr.cz>
 *
 * @brief   Parallel Marching Cubes implementation using OpenMP tasks + octree early elimination
 *
 * @date    18.12.2021
 **/

#ifndef TREE_MESH_BUILDER_H
#define TREE_MESH_BUILDER_H

#include "base_mesh_builder.h"

class TreeMeshBuilder : public BaseMeshBuilder
{
public:
    TreeMeshBuilder(unsigned gridEdgeSize);

protected:
    unsigned marchCubes(const ParametricScalarField &field);
    float evaluateFieldAt(const Vec3_t<float> &pos, const ParametricScalarField &field);
    void emitTriangle(const Triangle_t &triangle);
    const Triangle_t *getTrianglesArray() const { return mTriangles.data(); }

    unsigned octree(const Vec3_t<float> &pos, const ParametricScalarField &field, unsigned mGridSize);
    bool isEmpty(const Vec3_t<float> &pos, const ParametricScalarField &field, float gridSize);

    std::vector<Triangle_t> mTriangles; // Temporary array of triangles
    static const unsigned CUT_OFF = 1;
};

#endif // TREE_MESH_BUILDER_H
