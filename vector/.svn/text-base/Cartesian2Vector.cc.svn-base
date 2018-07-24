//
//   Cartesian 2-vectors that can be added, scaled, sized, dot and vector products etc.
//
#include "Cartesian2Vector.h"
#include <math.h>
#include <iostream> // Only for error message to cerr

Cartesian2Vector Cartesian2Vector::operator-(void) {
    return Cartesian2Vector(-x, -y);
}

Cartesian2Vector & Cartesian2Vector::operator+= (Cartesian2Vector b) {
    x += b.x; y += b.y;
    return *this;
}
Cartesian2Vector operator+ (Cartesian2Vector a, Cartesian2Vector b) {
    return Cartesian2Vector(a.x + b.x, a.y + b.y);
}

Cartesian2Vector & Cartesian2Vector::operator-= (Cartesian2Vector b) {
    x -= b.x; y -= b.y;
    return *this;
}
Cartesian2Vector operator- (Cartesian2Vector a, Cartesian2Vector b) {
    return Cartesian2Vector(a.x - b.x, a.y - b.y);
}

//Outer product:
double Cartesian2Vector::operator^= (Cartesian2Vector b) {
    return x * b.y - y * b.x;
}
double operator^ (Cartesian2Vector a, Cartesian2Vector b) {
    return a.x * b.y - a.y * b.x;
}

// Inner product
double operator* (Cartesian2Vector a, Cartesian2Vector b) {
    return a.x * b.x + a.y * b.y;
}

// Scaling
Cartesian2Vector & Cartesian2Vector::operator*= (double scalefactor) {
    x *= scalefactor; y *= scalefactor;
    return *this;
}
Cartesian2Vector operator* (Cartesian2Vector a, double scalefactor) {
    return Cartesian2Vector(a.x * scalefactor, a.y * scalefactor);
}
Cartesian2Vector operator* (double scalefactor, Cartesian2Vector a) {
    return Cartesian2Vector(a.x * scalefactor, a.y * scalefactor);
}

// Division by scalar (only post-)
Cartesian2Vector & Cartesian2Vector::operator/= (double scalefactor) {
    x /= scalefactor; y /= scalefactor;
    return *this;
}
Cartesian2Vector operator/ (Cartesian2Vector a, double scalefactor) {
    return Cartesian2Vector(a.x / scalefactor, a.y / scalefactor);
}

double Cartesian2Vector::squareModulus (void) const {
    return x * x + y * y;
}

double Cartesian2Vector::modulus (void) const {
    return sqrt(x * x + y * y);
}

Cartesian2Vector & Cartesian2Vector::rotate(Cartesian2Vector point, double phi) {
// Rotate this point about a point

    *this -= point; // translate origin to point

    // Rotate
    double temp = x * cos(phi) - y * sin(phi); 
    y = x * sin(phi) + y * cos(phi); 
    x = temp;

    *this += point; // translate origin back

    return *this;
}

// Cylindrical coords
double Cartesian2Vector::r() const {return this->modulus();}
double Cartesian2Vector::phi() const {return atan2(y, x);}

// Create from cyl coords
Cartesian2Vector c2vFromRPhi(double r, double phi) {
C2V temp;
    temp.x = r * cos(phi);
    temp.y = r * sin(phi);
    return temp;
}

std::ostream & operator<< (std::ostream &s, const Cartesian2Vector &v) {
    return s << '(' << v.x << ", " << v.y << ")";
}


