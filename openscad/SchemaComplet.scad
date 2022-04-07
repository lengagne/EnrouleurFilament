include <Gripper.scad>
include <MotorGear.scad>
include <Support.scad>

all = 1;

translate([0,0,-30])    Bobine();
Gripper();
translate([0,0,HBearing2/2])Bearing2();
translate([112,0,7])   rotate([180,0,10])    MotorGear();

translate([112,-20,-12])   rotate([0,0,90])  Motor();

rotate([0,0,-30])    
{
    translate([0,-60,-DBearing1Out/2])    rotate([90,0,0])    Bearing1();
    rotate([0,0,120])   translate([0,-60,-DBearing1Out/2])    rotate([90,0,0])    Bearing1();
    rotate([0,0,240])   translate([0,-60,-DBearing1Out/2])    rotate([90,0,0])    Bearing1();
}

Support();