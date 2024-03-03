use <../../threads-scad/threads.scad>

diameter = 78;
radius = diameter / 2;
klos = 75;
transition = 5;
tussenstuk_diameter = diameter - 10;
tussenstuk_radius = tussenstuk_diameter / 2;
tussenstuk_length = 10;

end_outer = 20;
end_inner = 10.5;
end_length = 15;
module object() {
    translate(v = [0, 0, 0]) {
        cylinder(h = tussenstuk_length/2, r = tussenstuk_radius);
    }
    translate(v = [0, 0, tussenstuk_length/2]) {
        cylinder(h = transition, r2 = radius, r1 = tussenstuk_radius);
    }
    translate(v = [0, 0, transition + tussenstuk_length/2]) {
        cylinder(h = klos, r = radius);
    }
    translate(v = [0, 0, klos + transition + tussenstuk_length/2]) {
        cylinder(h = transition, r1 = radius, r2 = tussenstuk_radius);
    }
    translate(v = [0, 0, klos + transition + tussenstuk_length/2 + transition]) {
        cylinder(h = tussenstuk_length, r = tussenstuk_radius);
    }
    translate(v = [0, 0, klos + transition + tussenstuk_length/2 + transition + tussenstuk_length]) {
        cylinder(h = transition, r2 = radius, r1 = tussenstuk_radius);
    }
    translate(v = [0, 0, klos + transition + tussenstuk_length/2 + 2*transition + tussenstuk_length]) {
        ScrewThread(outer_diam = klos - 20, height = 18);
    }
}

object();
mirror(v = [0,0,1])
    object(); 