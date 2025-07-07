pin_diameter = 4;
pin_width = 3;
diameter = 25.5;
width = 19;

$fn = 1000;

translate([0, 0, pin_diameter])
    cylinder(h = width, d = diameter);
cylinder(h = width + 2 * pin_diameter, d = pin_diameter);