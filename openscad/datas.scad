all = 0;

DBearing1In = 4.5*2;
DBearing1Out = 11*2;
HBearing1 = 7.5;

DBearing2In = 17;
DBearing2Out = 35.5;
HBearing2 = 10.5;

DBobineIn = 53;
DBobineOut=2*73+53;
DTambour = 116;

HBobineIn = 71;
HBobineOut = 77;

MotorAxis1 = 4.5;
MotorAxis2 = 6.5;

HSuppport = 10;


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

module Bearing1()
{
    color([0,0,1])
    {
        difference()
        {
            cylinder(r=DBearing1Out/2,h=HBearing1,center=true,$fn=50);
            cylinder(r=DBearing1In/2,h=HBearing1*2,center=true,$fn=50);
        }
    }
}


module Bearing2()
{
    color([0,0,1])
    {
        difference()
        {
            cylinder(r=DBearing2Out/2,h=HBearing2,center=true,$fn=50);
            cylinder(r=DBearing2In/2,h=HBearing2*2,center=true,$fn=50);
        }
    }
}


module Motor()
{
  color([0,0,1])
    {
        difference()
        {
            union()
            {
                translate([65/2-12,0,0])   cylinder(r=MotorAxis1/2,h=37.5,center=true,$fn=50);            
                cube([65,23,19],center=true);
                translate([65/2+5/2,0,0])   cube([5,5,3],center=true);
            }

             translate([0,-9,0])   cylinder( r= 2,h=30,$fn=50,center=true);
            translate([0,9,0])   cylinder( r= 2,h=30,$fn=50,center=true);
        }
    }  
}

