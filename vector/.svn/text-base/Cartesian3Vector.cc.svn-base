//
//   Cartesian 3-vectors that can be added, scaled, sized, dot and vector products etc.
//
#include "Cartesian3Vector.h"
//#include "Orientation.h"
#include <math.h>

Cartesian3Vector Cartesian3Vector::operator-(void) {
    return Cartesian3Vector(-x, -y, -z);
}

Cartesian3Vector & Cartesian3Vector::operator+= (Cartesian3Vector b) {
    x += b.x; y += b.y; z += b.z;
    return *this;
}
Cartesian3Vector operator+ (Cartesian3Vector a, Cartesian3Vector b) {
    return Cartesian3Vector(a.x + b.x, a.y + b.y, a.z + b.z);
}

Cartesian3Vector & Cartesian3Vector::operator-= (Cartesian3Vector b) {
    x -= b.x; y -= b.y; z -= b.z;
    return *this;
}
Cartesian3Vector operator- (Cartesian3Vector a, Cartesian3Vector b) {
    return Cartesian3Vector(a.x - b.x, a.y - b.y, a.z - b.z);
}

//Outer product:
Cartesian3Vector & Cartesian3Vector::operator^= (Cartesian3Vector b) {
    x = y * b.z - z * b.y; y = z * b.x - x * b.z; z = x * b.y - y * b.x;
    return *this;
}
Cartesian3Vector operator^ (Cartesian3Vector a, Cartesian3Vector b) {
    return Cartesian3Vector(a.y * b.z - a.z * b.y, a.z * b.x - a.x * b.z, a.x * b.y - a.y * b.x);
}

// Inner product
double operator* (Cartesian3Vector a, Cartesian3Vector b) {
    return a.x * b.x + a.y * b.y + a.z * b.z;
}

// Scaling
Cartesian3Vector & Cartesian3Vector::operator*= (double scalefactor) {
    x *= scalefactor; y *= scalefactor; z *= scalefactor;
    return *this;
}
Cartesian3Vector operator* (Cartesian3Vector a, double scalefactor) {
    return Cartesian3Vector(a.x * scalefactor, a.y * scalefactor, a.z * scalefactor);
}
Cartesian3Vector operator* (double scalefactor, Cartesian3Vector a) {
    return Cartesian3Vector(a.x * scalefactor, a.y * scalefactor, a.z * scalefactor);
}

// Division by scalar (only post-)
Cartesian3Vector & Cartesian3Vector::operator/= (double scalefactor) {
    x /= scalefactor; y /= scalefactor; z /= scalefactor;
    return *this;
}
Cartesian3Vector operator/ (Cartesian3Vector a, double scalefactor) {
    return Cartesian3Vector(a.x / scalefactor, a.y / scalefactor, a.z / scalefactor);
}

double Cartesian3Vector::squareModulus (void) const {
    return x * x + y * y + z * z;
}

double Cartesian3Vector::modulus (void) const {
    return sqrt(x * x + y * y + z * z);
}

Cartesian3Vector & Cartesian3Vector::rotate(Cartesian3Vector n, double phi) {
/*
 *   Rotate a point (displacement vector) about an axis through the origin; 
 *   the point is given (r) and returned (rp) as (x, y, z) triples; the 
 *   axis is given (n) by its direction cosines; the angle (phi) 
 *   is in radians.
 *
 *   Reference: Herbert Goldstein 2nd ed. p 164.
 *   
 *   rp = r cos(phi) + n(n.r)(1 - cos(phi)) + (r x n) sin(phi)
 */
    if (fabs(n.squareModulus() - 1.0) > 1.0e-10) {
        n = n / n.modulus();
    } 
    phi = -phi; // Active not passive rotations
    return *this = *this * cos(phi) + n * (n * *this) * (1. - cos(phi)) + (*this ^ n) * sin(phi);
}

std::ostream & operator<< (std::ostream &s, const Cartesian3Vector &v) {
    return s << '(' << v.x << ", " << v.y << ", " <<  v.z << ")";
}


