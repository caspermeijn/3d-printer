use <../../threads-scad/threads.scad>

diameter = 78;
radius = diameter / 2;
klos = 75;
transition = 10;
end_outer_diameter = 20;
end_outer_radius = end_outer_diameter / 2;
end_inner_radius = 5.5; 
end_length = 15;

ScrewHole(outer_diam = klos - 20, height = 20) {
    cylinder(h = klos, r = radius);
}
translate(v = [0, 0, klos]) {
    cylinder(h = transition, r1 = radius, r2 = end_outer_radius);
}
translate(v = [0, 0, klos + transition]) {
    difference() {
    cylinder(h = end_length, r = end_outer_radius);
    cylinder(h = end_length + 1, r = end_inner_radius);
    }
}
