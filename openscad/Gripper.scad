include <datas.scad>
include <gears/lib-gear-dh.scad>
include <gears/lib-worm-dh.scad>

ScaleGear = 35;
GripperWidth=20;

module Gripper()
{
    color([1,0,0])
    {
        translate([DBobineIn- GripperWidth/2-2,0,0])   cylinder(r=GripperWidth/2.5, h=HBobineOut*0.8,$fn=50);
        translate([-(DBobineIn- GripperWidth/2-2),0,0])   cylinder(r=GripperWidth/2.5, h=HBobineOut*0.8,$fn=50);
        translate([0,DBobineIn- GripperWidth/2-2,0])   cylinder(r=GripperWidth/2.5, h=HBobineOut*0.8,$fn=50);
        translate([0,-(DBobineIn- GripperWidth/2-2),0])   cylinder(r=GripperWidth/2.5, h=HBobineOut*0.8,$fn=50);


        difference()
        {
            union()
            {
                translate([0,0,7])  cylinder(r=DBobineOut/2, h=2,$fn=50);
                gear(80,10,ScaleGear);
//                cylinder(r=DBearing2Out/2+5, h=20,$fn=50);
                cylinder(r=DBobineIn/2-5, h=20,$fn=50);
                
            }
            cylinder(r=DBearing2Out/2+eps, h=HBearing2,$fn=50);
            cylinder(r=DBearing2Out/2.5, h=HBearing2*2,$fn=50);
            
            rotate([0,0,45])    translate([0,-(DBobineIn- GripperWidth/2-2),-10])   cylinder(r=GripperWidth/1.5, h=40,$fn=50);
            rotate([0,0,45+90])    translate([0,-(DBobineIn- GripperWidth/2-2),-10])   cylinder(r=GripperWidth/1.5, h=40,$fn=50);
            rotate([0,0,45+180])    translate([0,-(DBobineIn- GripperWidth/2-2),-10])   cylinder(r=GripperWidth/1.5, h=40,$fn=50);
            rotate([0,0,45+270])    translate([0,-(DBobineIn- GripperWidth/2-2),-10])   cylinder(r=GripperWidth/1.5, h=40,$fn=50);
            
            for ( angle = [0 :15:360] )
            {
                rotate([0,0,angle])    translate([0,(DBobineIn+20),-10])   cylinder(r=5, h=40,$fn=50);
            }
        }        
    }
}

if (all==0)
    Gripper();