circle_width = 5;
circle_radius = 180;
handle_width = 20;
handle_height = 35;
handle_depth = 5;
screw_radius = 3;
screw_1_height = 12;
screw_2_height = 25;
$fn = 100;

difference() {
    cylinder(h = circle_width, r = circle_radius + circle_width);
    translate([0,0,-1]) {
        cylinder(h = circle_width+2, r = circle_radius);
    }
};
translate([circle_radius, -handle_width/2,0]) {
    difference() {
        cube([handle_depth, handle_width, handle_height]);
        translate([-1, handle_width/2, screw_1_height]) {
            rotate([0,90,0]) {
                cylinder(h = handle_depth+2, r = screw_radius);
            }
        }
        translate([-1, handle_width/2, screw_2_height]) {
            rotate([0,90,0]) {
                cylinder(h = handle_depth+2, r = screw_radius);
            }
        }
    }

}