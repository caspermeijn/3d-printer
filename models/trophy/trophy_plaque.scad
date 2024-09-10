width = 70;
height = 25;

difference() {
    cube([width, height, 1]);
    translate([0,0,-1])
        cylinder(r = 5, h = 3);
    translate([0,height,-1])
        cylinder(r = 5, h = 3);
    translate([width,0,-1])
        cylinder(r = 5, h = 3);
    translate([width,height,-1])
        cylinder(r = 5, h = 3);
}
    
