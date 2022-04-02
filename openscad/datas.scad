
DBearingIn = 5*2;
DBearingOut = 11*2;

DBobineIn = 53;
DBobineOut=2*73+53;
DTambour = 116;

HBobineIn = 71;
HBobineOut = 77;

MotorAxis1 = 5;
MotorAxis2 = 7;

eps = 0.3;  // rajouté pour la précision de l'impression 3D.

module Bobine()
{
    color([0,0,0])  translate([0,0,DBobineOut/2+2]) difference()
    {
        union()
        {
            difference()
            {
                cylinder(r=DBobineOut/2,h=HBobineOut,center=true,$fn=50);
                cylinder(r=DBobineOut/2+2,h=HBobineIn,center=true,$fn=50);
            }
            cylinder(r=DTambour/2,h=HBobineOut,center=true,$fn=50);
        }
        cylinder(r=DBobineIn/2,h=HBobineOut+2,center=true,$fn=50);
    }
}

//bobine();