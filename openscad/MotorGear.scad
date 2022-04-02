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
                gear(15,10,ScaleGear);
                translate([0,0,-5])    cylinder(r=DBobineIn/2-5, h=5,$fn=50);
            }
            translate([0,0,-5]) cylinder(r=DBearingOut/2+eps, h=5,$fn=50);
            cube([MotorAxis1, MotorAxis2,30],center=true);
        }        
    }
}

MotorGear();