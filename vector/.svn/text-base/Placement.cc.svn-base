//
//   Detector items etc. have both a position and an orientation. Together 
//   these constitute its Placement. An orientation has 3 dof (e.g. 3 angles
//   with the axis). But for planar objects like silicon wafers, the direction 
//   cosines of the normal to the plane are very useful (they give the equation 
//   of the plane) so I use that for 2 of the angles. The third angle I use is
//   phi (angle to x-axis), which again I store as direction cosines cos(phi) 
//   and sin(phi) (3rd component always zero). Wasteful on memory (6 items instead
//   of 3) but easy to implement (only one rotation routine).
//
#include <math.h>
#include "Placement.h"


void Placement::normalize(void) {
    normal /= normal.modulus();
//    inplane.z = 0.0; // old version, wanted to store only cos(phi) and sin(phi)
//                     // but it was too awkward to rotate
    inplane /= inplane.modulus();
}

Placement & Placement::rotate (const Cartesian3Vector &n, double angle) {

    position.rotate(n, angle);
    normal.rotate(n, angle);
    inplane.rotate(n, angle);
//    normalize();

    return *this;
}

Placement & Placement::translate(const Cartesian3Vector &t) {
    position += t;
    return *this;
}

std::ostream & operator << (std::ostream &s, const Placement &p) {
    return s << "Position: " << p.position << "; Normal dir cos: " << p.normal << 
                "; In-plane dircos: " << p.inplane << ".\n";
}
