//+
SetFactory("OpenCASCADE");
Box(1) = {0, 0, 0, 1, 1, 0.1};
//+
Transfinite Surface {1};
//+
Transfinite Surface {2};
//+
Transfinite Surface {3};
//+
Transfinite Surface {4};
//+
Transfinite Surface {5};
//+
Transfinite Surface {6};
//+
Transfinite Volume {1};
//+
Transfinite Curve {1,3,5,7} = 10 Using Progression 1;
//+
Transfinite Curve {2,4,6,8,9,10,11,12} = 20 Using Progression 1;
//+
Physical Surface("sides") = {4, 1, 3, 2};
//+
Physical Surface("inlet") = {6};
//+
Physical Surface("outlet") = {5};
Physical Volume("internal") ={1};
//++
Recombine Surface {1,2,3,4,5,6};
