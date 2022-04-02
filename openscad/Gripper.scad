include <datas.scad>
include <gears/lib-gear-dh.scad>
include <gears/lib-worm-dh.scad>

ScaleGear = 35;
GripperWidth=20;

module gripper()
{
    color([1,0,0])
    {
        translate([DBobineIn- GripperWidth/2-2,0,0])   cylinder(r=GripperWidth/2, h=HBobineOut*1.2,$fn=50);
        translate([-(DBobineIn- GripperWidth/2-2),0,0])   cylinder(r=GripperWidth/2, h=HBobineOut*1.2,$fn=50);
        translate([0,DBobineIn- GripperWidth/2-2,0])   cylinder(r=GripperWidth/2, h=HBobineOut*1.2,$fn=50);
        translate([0,-(DBobineIn- GripperWidth/2-2),0])   cylinder(r=GripperWidth/2, h=HBobineOut*1.2,$fn=50);

    // gear(teeth,thikness,scale);
        difference()
        {
            union()
            {
                translate([0,0,8])  cylinder(r=DBobineOut/2, h=5,$fn=50);
                gear(80,10,ScaleGear);
                cylinder(r=DBobineIn/2-5, h=20,$fn=50);
            }
            cylinder(r=DBearingOut/2+eps, h=30,$fn=50);
        }        
    }
}

gripper();