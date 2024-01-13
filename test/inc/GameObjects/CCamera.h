#ifndef CCAMERA_H
#define CCAMERA_H
#include "include/types.h"
typedef struct CCamera CCamera, *PCCamera;

struct CCamera {
    char buffer[4];
	funcPtr SceneCamera__dt;
	funcPtr zz_80193468_;
	funcPtr zz_801932f4_;
	funcPtr zz_80193190_;
	funcPtr zz_80192fa0_;
	funcPtr zz_80192dcc_;
	funcPtr zz_80192cc0_;
	funcPtr zz_80028330_;
	funcPtr zz_80192c1c_;
	funcPtr zz_80192ad0_;
	funcPtr cPlayer__PostPhysicsUpdate_void__N2;
	funcPtr cPlayer__PostPhysicsUpdate_void__N37;
	funcPtr cPlayer__PostPhysicsUpdate_void__N36;
	funcPtr zz_80192a8c_;
	funcPtr cPlayer__PostPhysicsUpdate_void_;
	funcPtr cPlayer__PostPhysicsUpdate_void__N38;
	funcPtr dGeomSphereSetRadius;
	funcPtr zz_80015120_;
	funcPtr dGeomSphereSetRadius_N3;
	funcPtr dGeomSphereSetRadius_N2;
	funcPtr nlVector3__Set_float__N2;
	funcPtr nlVector3__Set_float_;
	funcPtr nlVector3__Set_float__N6;
	funcPtr nlVector3__Set_float__N10;
	funcPtr nw4hbm__ut__TextWriterBase_w___SetCharSpace_float_;
	funcPtr zz_800150d8_;
	funcPtr set_triple_position;
	funcPtr zz_80087c88_;
	funcPtr zz_801922f0_;
	funcPtr nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N3;
	funcPtr nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N2;
	funcPtr nw4hbm__ut__TextWriterBase_w___SetCharSpace_float__N16;
	funcPtr zz_8001d29c_;
	funcPtr zz_80015060_;
	funcPtr zz_80192340_;
	funcPtr zz_801929ac_;
	funcPtr zz_801928c4_;
	funcPtr zz_8019265c_;
	funcPtr zz_801925d0_;
	funcPtr zz_80192598_;
	char endbuffer[4];

    
}__attribute__((aligned(4)));


#endif