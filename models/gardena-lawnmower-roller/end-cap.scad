use <../../threads-scad/threads.scad>

diameter = 78;
radius = diameter / 2;
klos = 75;
transition = 10;
end_outer = 20;
end_inner = 10.5;
end_length = 15;

ScrewHole(outer_diam = klos - 20, height = 20) {
    cylinder(h = klos, r = radius);
}
translate(v = [0, 0, klos]) {
    cylinder(h = transition, r1 = radius, r2 = end_outer);
}
translate(v = [0, 0, klos + transition]) {
    difference() {
    cylinder(h = end_length, r = end_outer);
    cylinder(h = end_length + 1, r = end_inner);
    }
}
