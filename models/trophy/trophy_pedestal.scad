height_top = 10;
width_top = 60;
height_bottom = 30;
width_bottom = 80;
hole_width = 50;
hole_depth = 5;
root_2 = 1.414213562;

difference() {
    translate([width_bottom/2, width_bottom/2, height_bottom]) {
        rotate([0,0,45]) {
            cylinder(h=height_top,d1=width_bottom*root_2,d2=width_top*root_2,$fn=4);
        }
    }
    translate([width_bottom/2, width_bottom/2, height_bottom + height_top - hole_depth + 1]) {
        cylinder(h=hole_depth + 1,d=hole_width);
    }
}

cube([width_bottom, width_bottom, height_bottom]);

