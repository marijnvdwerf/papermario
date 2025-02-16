#include "common.h"
#include "npc.h"
#include "model.h"

typedef struct FoliageModelList {
    s32 count;
    s32 models[0];
} FoliageModelList;

typedef struct FoliageDropList {
    s32 count;
    struct {
        s32 itemID;
        Vec3i pos;
        s32 spawnMode;
        Bytecode pickupFlag;
        Bytecode spawnFlag;
    } drops[0];
} FoliageDropList;

typedef struct FoliageVectorList {
    s32 count;
    Vec3i vectors[0];
} FoliageVectorList;

typedef struct SearchBushConfig {
    FoliageModelList* bush;
    FoliageDropList* drops;
    FoliageVectorList* vectors;
    EvtScript* callback;
} SearchBushConfig;

typedef struct ShakeTreeConfig {
    FoliageModelList* leaves;
    FoliageModelList* trunk;
    FoliageDropList* drops;
    FoliageVectorList* vectors;
    EvtScript* callback;
} ShakeTreeConfig;

void N(foliage_setup_shear_mtx)(Matrix4f mtx, f32 scale, f32 xAmount, f32 zAmount) {
    guMtxIdentF(mtx);
    mtx[1][0] = scale * xAmount;
    mtx[1][1] = 1.0f;
    mtx[1][2] = scale * zAmount;
}

/// @apiparam int model ID
/// @apiparam float scale
/// @apiparam float dx
/// @apiparam float dy
/// @apiparam float dz
ApiStatus N(TransformFoliage)(Evt* script, s32 isInitialCall) {
    Bytecode* args = script->ptrReadPos;
    s32 modelListIndex = get_model_list_index_from_tree_index(evt_get_variable(script, *args++));
    f32 scale = evt_get_float_variable(script, *args++);
    f32 dx = evt_get_float_variable(script, *args++);
    f32 dy = evt_get_float_variable(script, *args++);
    f32 dz = evt_get_float_variable(script, *args++);
    Model* model = get_model_from_list_index(modelListIndex);
    Matrix4f mtx;

    if (!(model->flags & MODEL_FLAG_HAS_TRANSFORM_APPLIED)) {
        guTranslateF(model->transformMatrix, 0.0f, dy, 0.0f);
        N(foliage_setup_shear_mtx)(mtx, scale, dx, dz);
        guMtxCatF(mtx, model->transformMatrix, model->transformMatrix);
        guTranslateF(mtx, 0.0f, -dy, 0.0f);
        guMtxCatF(mtx, model->transformMatrix, model->transformMatrix);
        model->flags |= (MODEL_FLAG_HAS_TRANSFORM_APPLIED | MODEL_FLAG_USES_TRANSFORM_MATRIX);
    } else {
        guTranslateF(mtx, 0.0f, dy, 0.0f);
        guMtxCatF(mtx, model->transformMatrix, model->transformMatrix);
        N(foliage_setup_shear_mtx)(mtx, scale, dx, dz);
        guMtxCatF(mtx, model->transformMatrix, model->transformMatrix);
        guTranslateF(mtx, 0.0f, -dy, 0.0f);
        guMtxCatF(mtx, model->transformMatrix, model->transformMatrix);
    }

    return ApiStatus_DONE2;
}
