include <datas.scad>

module SupportBearing()
{
    cylinder(r=(DBearing1In/2)-0.5, h = 20, center=true, $fn=50);
    translate([0,0,DBearing1In/2])    cylinder(r=(DBearing1In/2)+1, h = 3, center=true, $fn=50);    
    translate([0,-15/2,DBearing1In])  cube([20,30,10],center=true);    
    
    
    translate([0,-20,DBearing1In/2-8])    rotate([90,0,0])  difference()
    {
        cylinder(r=20, h = 5, center=true, $fn=50);
        cylinder(r=10, h = 6, center=true, $fn=50);
    }
}

module Support()
{
    color([0,1,1])
    {
        difference()
        {
            union()
            {

                translate([0,0,-7])cylinder(r=DBearing2In/2+0.25,h=50,center=true,$fn=50);
                translate([0,0,-17])cylinder(r=DBearing2In/2+2.25,h=33,center=true,$fn=50);
                
                translate([20,0,-31])cube([40,20,5],center=true);
                rotate([0,0,120])    translate([20,0,-31])cube([40,20,5],center=true);
                rotate([0,0,240])    translate([20,0,-31])cube([40,20,5],center=true);
                
                rotate([0,0,-30])    
                {
                    translate([0,-61,-DBearing1Out/2])    rotate([90,0,0])   SupportBearing();
                    rotate([0,0,120])   translate([0,-61,-DBearing1Out/2])    rotate([90,0,0])    SupportBearing();
                    rotate([0,0,240])   translate([0,-61,-DBearing1Out/2])    rotate([90,0,0])    SupportBearing();
                }
                
                translate([112,-20,-27.5])   rotate([0,0,90]) cube([70,30,12],center=true);
                
                translate([90,0,-31])cube([40,20,5],center=true);
                
                
            }
            translate([15,0,-32])cylinder(r=3,h=20,$fn=50,center=true);
            translate([30,0,-32])cylinder(r=3,h=20,$fn=50,center=true);
            rotate([0,0,120]) {
            translate([15,0,-32])cylinder(r=3,h=20,$fn=50,center=true);
            translate([30,0,-32])cylinder(r=3,h=20,$fn=50,center=true);
            }
            rotate([0,0,-120]) {
            translate([15,0,-32])cylinder(r=3,h=20,$fn=50,center=true);
            translate([30,0,-32])cylinder(r=3,h=20,$fn=50,center=true);
            }
            
            translate([112,-20,-27.5])
            {
                translate([9,0,0])   cylinder( r= 2,h=100,$fn=50,center=true);
                translate([9,0,-6])   cylinder( r= 3,h=5,$fn=50,center=true);                
                translate([-9,0,0])   cylinder( r= 2,h=100,$fn=50,center=true);
                translate([-9,0,-6])   cylinder( r= 3,h=5,$fn=50,center=true);                
                translate([0,20,0])      cylinder( r= 4,h=100,$fn=50,center=true);
                translate([0,8,8])      cylinder( r= 3,h=10,$fn=50,center=true);
            }
        }
    }
}

if (all==0)
{
    Support();
}