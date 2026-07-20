#include <types.h>

extern "C" char MainGame[];
extern "C" void GXProject(f32 x, f32 y, f32 z, void* mtx, void* mtx2, void* vp, f32* sx, f32* sy, f32* sz);

//8008B5D4
extern "C" void Project3D(char* obj, f32* point, f32* outX, f32* outY, f32* outZ, char* matrixSet)
{
    if (matrixSet == 0) {
        matrixSet = MainGame + 0xE5D38;
    }

    f32 x = *(f32*)(obj + 0xc8) + point[0];
    f32 y = *(f32*)(obj + 0xcc) + point[1];
    f32 z = *(f32*)(obj + 0xd0) + point[2];

    f32 sx, sy, sz;
    GXProject(x, y, z, matrixSet + 0xe8, matrixSet + 0x15c, matrixSet + 0x178, &sx, &sy, &sz);

    if (outX != 0) *outX = sx;
    if (outY != 0) *outY = sy;
    if (outZ != 0) *outZ = sz;
}
