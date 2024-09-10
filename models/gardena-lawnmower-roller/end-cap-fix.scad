end_inner_diameter = 10.5;
end_inner_radius = 5.5;
end_length = 15;

difference() {
    cylinder(h = end_length, r = end_inner_diameter - 0.1);
    cylinder(h = end_length + 1, r = end_inner_radius);
}
