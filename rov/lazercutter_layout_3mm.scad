include<../params.scad>
use<arm.scad>
use<arm_upper.scad>


$fn = 360;
translate([51, -51])
arm_2D();


for(i=[0,1])
{
for(j=[0,1])
{
    translate([51,-165+i*12])
    mirror([j*1,0,0])
    translate([-20,0])
    difference(){
        translate([0,PROP_SHROUD_DIA/2-5+(DOME_DIA+30)/2])
        arm_upper_2D();
        circle(r=(DOME_DIA+30)/2+0.1);
        square([1000,1000]);
    }
}
}
translate([51,-80])
    arm_upper_2D();