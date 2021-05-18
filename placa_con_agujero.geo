// Gmsh project created on Mon May 10 20:14:10 2021
SetFactory("OpenCASCADE");
//+
Point(1) = {0, 0, 0, 1.0};
//+
Point(2) = {2, 0, 0, 1.0};
//+
Point(3) = {18, 0, 0, 1.0};
//+
Point(4) = {20, 0, 0, 1.0};
//+
Point(5) = {20, 4, 0, 1.0};
//+
Point(6) = {18, 4, 0, 1.0};
//+
Point(7) = {2, 4, 0, 1.0};
//+
Point(8) = {0, 4, 0, 1.0};
//+
Line(1) = {1, 2};
//+
Line(2) = {2, 3};
//+
Line(3) = {3, 4};
//+
Line(4) = {4, 5};
//+
Line(5) = {5, 6};
//+
Line(6) = {6, 7};
//+
Line(7) = {7, 8};
//+
Line(8) = {8, 1};
//+
Line(9) = {2, 7};
//+
Line(10) = {6, 3};
//+
Curve Loop(1) = {8, 1, 9, 7};
//+
Plane Surface(1) = {1};
//+
Curve Loop(2) = {2, -10, 6, -9};
//+
Plane Surface(2) = {2};
//+
Curve Loop(3) = {3, 4, 5, 10};
//+
Plane Surface(3) = {3};
//+
Physical Surface("Extremos", 4) = {1, 3};
//+
Physical Surface("Placa", 3) = {2};
//+
Show "*";
//+
Physical Curve("Empotrado", 1) = {8};
//+
Physical Curve("BordeNatural", 2) = {4};
//+
Circle(11) = {10, 20, 0, 2, 0, 2*Pi};
//+
Recursive Delete {
  Curve{11}; 
}
//+
Circle(11) = {10, 2, 0, 2, 0, 2*Pi};
//+
Circle(12) = {10, 2, 0, 1, 0, 2*Pi};
//+
Recursive Delete {
  Curve{11}; 
}
//+
Curve Loop(4) = {12};
//+
Plane Surface(4) = {4};
//+
Curve Loop(5) = {12};
//+
BooleanDifference{ Surface{2}; Delete; }{ Surface{4}; Delete; }
//+
Transfinite Curve {12} = 40 Using Progression 1;
//+
Transfinite Curve {12} = 20 Using Progression 1;
//+
Transfinite Curve {12} = 10 Using Progression 1;
//+
Transfinite Curve {12, 12} = 10 Using Progression 1;
//+
Transfinite Curve {12, 12} = 6 Using Progression 1;
//+
Transfinite Curve {12} = 5 Using Progression 1;
//+
Transfinite Curve {12} = 25 Using Progression 1;
//+
Transfinite Curve {12, 12} = 5 Using Progression 1;
//+
Transfinite Curve {12} = 10 Using Progression 1;
