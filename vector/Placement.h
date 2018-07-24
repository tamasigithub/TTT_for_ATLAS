//
//   Detector items etc. have both a position and an orientation. Together 
//   these constitute its Placement. I use the direction cosines of the normal to the 
//   plane of the item, and the direction cosines of some direction in the plane as
//   the orientation. This wastes memory (6 numbers instead of 3) but is very convenient:
//   one simple rotation routine; plane of object is parametrised by is normal's direction 
//   cosines. The User must ensure the two directions are perpendicular.
//
#ifndef PLACEMENT_H
#define PLACEMENT_H

#include "Cartesian3Vector.h"

class Placement {
public:
    Cartesian3Vector position, normal, inplane;
    Placement(): position(0., 0., 0.), normal(0., 0., 1.), inplane(1., 0., 0.) {normalize();};
    Placement(const Cartesian3Vector &p, const Cartesian3Vector &n, const Cartesian3Vector &ip):
     position(p), normal(n), inplane(ip) {normalize();};
    void normalize(void);
    Placement & rotate (const Cartesian3Vector &n, double angle);
    Placement & translate(const Cartesian3Vector &t);
    friend std::ostream & operator << (std::ostream &s, const Placement &p);
};

#endif // PLACEMENT_H

