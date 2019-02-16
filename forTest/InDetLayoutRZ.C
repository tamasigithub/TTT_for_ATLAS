#ifndef InDetLayoutRZ_C
#define InDetLayoutRZ_C
#include "InDetPixelLayoutRZ.C"
#include "InDetSCTLayoutRZ.C"

void InDetLayoutRZ() {
   double area = 0;
   area += InDetSCTLayoutRZ(true);
   area += InDetPixelLayoutRZ(false);
    std::cout <<  "=========================================" << std::endl;
    std::cout <<  "Total Silicon area = " << area << " m2" << std::endl;
}

#endif
