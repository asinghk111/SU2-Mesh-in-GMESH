
Include "airfoil.geo";
//+

ymax = 250;
xmax = 250;
n_inlet = 10;
n_vertical = 10;
r_vertical = 1/0.95;
n_airfoil = 10;
n_wake = 10;
r_wake = 1/0.95;

//+
Point(201) = {-0.5, ymax, 0, 1.0};
//+
Point(202) = {-0.5, -ymax, 0, 1.0};
//+
Point(203) = {20, ymax-10, 0, 1.0};
//+
Point(204) = {20, -ymax+10, 0, 1.0};
//+
Point(205) = {xmax, ymax, 0, 1.0};
//+
Point(206) = {xmax, -ymax, 0, 1.0};
//+
Point(207) = {xmax, 0, 0, 1.0};
//+
Circle(2) = {202, 100, 201};
//+
Line(3) = {74, 201};
//+
Line(4) = {126, 202};
//+
Line(5) = {201, 203};
//+
Line(6) = {202, 204};
//+
Line(7) = {203, 205};
//+
Line(8) = {204, 206};
//+
Line(9) = {207, 206};
//+
Line(10) = {207, 205};
//+
Line(11) = {200, 203};
//+
Line(12) = {200, 204};
//+
Line(13) = {200, 207};
//+
Split Curve {1} Point {74, 126};
//+
Split Curve {15} Point {200};
//+
Transfinite Curve {2, 14} = n_inlet Using Progression 1;
//+
Transfinite Curve {3, 11, 10, 4, 12, 9, 9} = n_vertical Using Progression r_vertical;
//+
Transfinite Curve {17, 16} = n_airfoil Using Bump 0.1;
//+
Transfinite Curve {5, 6} = n_airfoil Using Bump 2;
//+
Transfinite Curve {13} = n_wake Using Progression r_wake;
//+
Transfinite Curve {7, 8} = n_wake Using Progression r_wake;
//+
Curve Loop(1) = {2, -3, 14, 4};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {3, 5, -11, 17};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {11, 7, -10, -13};
//+
Plane Surface(3) = {3};
//+
Curve Loop(4) = {4, 6, -12, -16};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {12, 8, -9, -13};
//+
Plane Surface(5) = {5};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {5};
//+
Transfinite Surface {4};
//+
Recombine Surface {1, 2, 3, 5, 4};
//+
Physical Curve("farfield", 131) = {2, 5, 7, 10, 9, 8, 6};
//+
Physical Curve("airfoil", 132) = {14, 17, 16};
//+
Physical Surface("Fluid", 128) = {1, 2, 3, 5, 4};
