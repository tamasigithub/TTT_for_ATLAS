//
//   Cartesian 2-vectors that can be added, scaled, sized, dot and vector products etc.
//
#ifndef CARTESIAN2VECTOR_H
#define CARTESIAN2VECTOR_H

#include <ostream>

class Cartesian2Vector {
public:
double x, y;
    Cartesian2Vector (double xval = 0.0, double yval = 0.0): 
         x(xval), y(yval) {};

    Cartesian2Vector operator- (void);                     // Unary minus

    friend Cartesian2Vector operator+ (Cartesian2Vector a, Cartesian2Vector b); // Sum
    Cartesian2Vector & operator+= (Cartesian2Vector b);

    friend Cartesian2Vector operator- (Cartesian2Vector a, Cartesian2Vector b); // Difference
    Cartesian2Vector & operator-= (Cartesian2Vector b);

    friend double operator^ (Cartesian2Vector a, Cartesian2Vector b); // Outer products; return
    double operator^= (Cartesian2Vector b);                      // vector length ("z coord")

    friend double           operator* (Cartesian2Vector a, Cartesian2Vector b); // Inner product

    friend Cartesian2Vector operator* (Cartesian2Vector a, double scalefactor); // Post-scaling
    Cartesian2Vector & operator*= (double scalefactor);

    friend Cartesian2Vector operator/ (Cartesian2Vector a, double scalefactor); // Post-scaling by reciprocal (division)
    Cartesian2Vector & operator/= (double scalefactor);

    friend Cartesian2Vector operator* (double scalefactor, Cartesian2Vector a); // Pre-scaling
//    Cartesian2Vector & operator*= (double scalefactor);

    double modulus (void) const;
    double squareModulus (void) const;
    Cartesian2Vector & rotate(Cartesian2Vector point, double angle);
    double r() const;
    double phi() const;
    friend std::ostream & operator<< (std::ostream &s, const Cartesian2Vector &v);
};

Cartesian2Vector c2vFromRPhi(double r, double phi); 

// Abbreviation:
#define C2V Cartesian2Vector

#endif // CARTESIAN2VECTOR_H
