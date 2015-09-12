module para_gear(x,hi,radi){
$fn=60;
pi=3.14159265359;
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
translate([-3.7/2,-hi,rad-.4])hull(){cube([3.7,hi,2.15]);
translate([1.15,0,4.25])cube([1.4,hi,.1]);}
}
}


rotate([90,0,0])cylinder(h=hi,r=rad);
}
rotate([90,0,0])cylinder(h=hi+1,r=radi);
}}}

para_gear(100,3,2);