include <datas.scad>
include <gears/lib-gear-dh.scad>
include <gears/lib-worm-dh.scad>

ScaleGear = 35;
GripperWidth=20;

module MotorGear()
{
    color([0,1,0])
    {
        difference()
        {
            union()
            {               
                gear(20,10,ScaleGear);
//                translate([0,0,HBearing1])    cylinder(r=DBobineIn/2.-5, h=HBearing1,$fn=50);
//                translate([0,0,-HBearing1+5])    cylinder(r=MotorAxis2, h=HBearing1,$fn=50);
            }
//            translate([0,0,HBearing1])  cylinder(r=DBearing1Out/2+eps-0.25, h=HBearing1,$fn=50);
            cube([MotorAxis1, MotorAxis2,100],center=true);
        }        
    }
}

if (all == 0)
    MotorGear();