



//////////////////////////////////
module para_gear_skew(x,hi,radi){
$fn=60;
pi=3.14159265359;
    wall=1;
    support=2;
//x=30;
pitch=360/x;
rad=3*x/pi;
//hi=6;
//radi=5;
render(){
difference(){
union(){
for(i=[0:pitch:360]){
    rotate([0,i,0]){
translate([-3/2,-hi,rad-.4]){

hull(){
hull(){cube([3,.1,2.15]);
translate([1,0,4.25])cube([1,.1,.1]);}


translate([-1,hi/2,0])
hull(){cube([3,.1,2.15]);
translate([1,0,4.25])cube([1,.1,.1]);}
}




hull(){
translate([-1,hi/2,0])
hull(){cube([3,.1,2.15]);
translate([1,0,4.25])cube([1,.1,.1]);}

translate([0,hi,0])
hull(){cube([3,.1,2.15]);
translate([1,0,4.25])cube([1,.1,.1]);}
}
}
}
}
rotate([90,0,0])cylinder(h=hi,r=rad);

}

rotate([90,0,0])cylinder(h=hi+1,r=radi);
translate([0,support,0])
difference(){
    rotate([90,0,0])cylinder(h=5,r=rad-wall);
rotate([90,0,0])cylinder(h=5,r=radi+wall);
    
}
for(zulu=[0:72:360]){
    rotate([0,zulu,0])
translate([radi+(rad-radi)/2,1,0])rotate([90,0,0])cylinder(h=hi+2,r=(rad-radi-(2*wall+1))/3);
}
/*

translate([-radi-(rad-radi)/2,1,0])rotate([90,0,0])cylinder(h=hi+2,r=(rad-radi-(2*wall+1))/2);


translate([0,1,radi+(rad-radi)/2])rotate([90,0,0])cylinder(h=hi+2,r=(rad-radi-(2*wall+1))/2);


translate([0,1,-radi-(rad-radi)/2])rotate([90,0,0])cylinder(h=hi+2,r=(rad-radi-(2*wall+1))/2);
*/

}}}

rotate([90,0,0])
para_gear_skew(10,5,2);
translate([40,0,0])
rotate([90,0,0])
para_gear_skew(15,5,2);