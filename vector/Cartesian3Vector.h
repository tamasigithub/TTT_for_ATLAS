//
//   Cartesian 3-vectors that can be added, scaled, sized, dot and vector products etc.
//
#ifndef CARTESIAN3VECTOR_H
#define CARTESIAN3VECTOR_H

#include <ostream>

class Cartesian3Vector {
public:
double x, y, z;
    Cartesian3Vector (double xval = 0.0, double yval = 0.0, double zval = 0.0): 
         x(xval), y(yval), z(zval) {};

    Cartesian3Vector operator- (void);                     // Unary minus

    friend Cartesian3Vector operator+ (Cartesian3Vector a, Cartesian3Vector b); // Sum
    Cartesian3Vector & operator+= (Cartesian3Vector b);

    friend Cartesian3Vector operator- (Cartesian3Vector a, Cartesian3Vector b); // Difference
    Cartesian3Vector & operator-= (Cartesian3Vector b);

    friend Cartesian3Vector operator^ (Cartesian3Vector a, Cartesian3Vector b); // Outer product
    Cartesian3Vector & operator^= (Cartesian3Vector b);

    friend double           operator* (Cartesian3Vector a, Cartesian3Vector b); // Inner product

    friend Cartesian3Vector operator* (Cartesian3Vector a, double scalefactor); // Post-scaling
    Cartesian3Vector & operator*= (double scalefactor);

    friend Cartesian3Vector operator/ (Cartesian3Vector a, double scalefactor); // Post-scaling by reciprocal (division)
    Cartesian3Vector & operator/= (double scalefactor);

    friend Cartesian3Vector operator* (double scalefactor, Cartesian3Vector a); // Pre-scaling
//    Cartesian3Vector & operator*= (double scalefactor);

    double modulus (void) const;
    double squareModulus (void) const;
    Cartesian3Vector & rotate(Cartesian3Vector axis, double angle);
    friend std::ostream & operator<< (std::ostream &s, const Cartesian3Vector &v);
};


// Abbreviation:
#define C3V Cartesian3Vector

#endif // CARTESIAN3VECTOR_H
