width = 12;


between_outer_holes = 54;
outer_hole_to_outside = 55;
total_height = between_outer_holes + 2 * outer_hole_to_outside;

back_depth = 68;
front_depth = 20;
total_depth = back_depth + front_depth;

hole_depth = 5;
hole_radius = 1;

x_between_holes = 6.5;
x_outer_hole_from_edge = width / 2 - x_between_holes / 2;
x_inner_hole_from_edge = width / 2 + x_between_holes / 2;
y_between_holes = 4.8;

difference() {
    cube([front_depth,width,total_height]);
 
}

translate([front_depth - 1, x_outer_hole_from_edge, outer_hole_to_outside]) {
    rotate([90,0,90]){
        cylinder(h = hole_depth +1, r = hole_radius);
    }
}
translate([front_depth - 1, x_inner_hole_from_edge, outer_hole_to_outside - y_between_holes]) {
    rotate([90,0,90]){
        cylinder(h = hole_depth +1, r = hole_radius);
    }
}
translate([front_depth - 1, x_outer_hole_from_edge, outer_hole_to_outside + between_outer_holes]) {
    rotate([90,0,90]){
        cylinder(h = hole_depth +1, r = hole_radius);
    }
}
translate([front_depth - 1, x_inner_hole_from_edge, outer_hole_to_outside + outer_hole_to_outside + y_between_holes]) {
    rotate([90,0,90]){
        cylinder(h = hole_depth +1, r = hole_radius);
    }
}   


cube([total_depth,width,width]);
translate([total_depth- width, 0,0]) {
    cube([width,width,total_height]);
}
translate([0,0, total_height- width]) {
    cube([total_depth,width,width]);
}
