//   Test out vectors...
#include "Cartesian3Vector.h"
#include "Cartesian2Vector.h"
#include "Placement.h"
#include <iostream>
#include <math.h>
#define PI acos(-1.0)

int main () {

Cartesian3Vector i(1.0, 0.0, 0.0), j(0.0, 1.0, 0.0), k(0.0, 0.0, 1.0);
Cartesian3Vector x, y, z;

z = i ^ j;
std::cout << "z = i x j = " << z << '\n';

x = j ^ k;
std::cout << "x = j x k = " << x << '\n';

y = k ^ i;
std::cout << "z = k x i = " << y << '\n';

z = i * j;
std::cout << "z = i dot j = " << z << '\n';

x = 4.0 * (i * 3.0 + -j * 5.0 + k * 7.0) / 2.0;
std::cout << "4.0 * (i * 3.0 + -j * 5.0 + k * 7.0) / 2.0 = " << x << '\n';

std::cout << "...with square-modulus " << x.squareModulus() << " and modulus " << x.modulus() << '\n';

std::cout << "x dot i = " << x * i << '\n';
std::cout << "x dot j = " << x * j << '\n';
std::cout << "x dot k = " << x * k << '\n';
std::cout << "x dot x = " << x * x << '\n';

z = i;
std::cout << "i rotated about z-axis by 90 deg is " << z.rotate(2*k, PI/2.0) << '\n'; 
z = j;
std::cout << "j rotated about y-axis by 90 deg is " << z.rotate(j, PI/2.0) << '\n'; 
z = k;
std::cout << "k rotated about y-axis by 90 deg is " << z.rotate(j, PI/2.0) << '\n';

Cartesian3Vector dx(1, 0, 0), dy(0, 1, 0), dz(10, 0, 1);
Placement p(i, dy, dx);
std::cout << "p is the placement with " << p << '\n';

p.translate(j);
std::cout << "After translation 1 unit parallel to y-axis, p is " << p << '\n';

p.rotate(i, PI/2);
std::cout << "After rotation about x-axis by 90 deg p is " << p << '\n';
p.rotate(k, PI/2.);
std::cout << "After further rotation about z-axis by 90 deg p is " << p << '\n';


C2V a(1, 0), b(0, 1), c(1, 1);

std::cout << "a = " << a << " b = " << b << " c = " << c << '\n';

std::cout << "a + b - c = " << a + b - c << std::endl;

std::cout << "a rotated 90 deg about c = " << a.rotate(c, PI/2.) << '\n';

std::cout << "b.c = " << b * c << std::endl;


}

