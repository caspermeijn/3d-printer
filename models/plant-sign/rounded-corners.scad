// SPDX-License-Identifier: CC-BY-NC-SA-4.0
// Copyright 2023 Casper Meijn <casper@meijn.net>
// To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/

text_thickness = 2;

sign_height = 50;
sign_width = 100;
sign_thickness = 1;
sign_radius = 10;

pole_height = 100;
pole_width = 20;


linear_extrude(height = sign_thickness) {
    // Rounded top sign
    translate([sign_radius, sign_radius, 0]) {
        circle(r = sign_radius);
    }
    translate([sign_width - sign_radius, sign_height - sign_radius, 0]) {
        circle(r = sign_radius);
    }
    translate([sign_radius, sign_height - sign_radius, 0]) {
        circle(r = sign_radius);
    }
    translate([sign_width - sign_radius, sign_radius, 0]) {
        circle(r = sign_radius);
    }
    translate([0, sign_radius, 0]) {
        square(size = [sign_width, sign_height - sign_radius * 2]);
    }
    translate([sign_radius, 0, 0]) {
        square(size = [sign_width - sign_radius * 2, sign_height]);
    }

    translate([sign_width / 2 - pole_width / 2, sign_height, 0]) {
        // Pole
        square(size = [pole_width, pole_height]);
        translate([0, pole_height, 0]) {
            // Pole tip
            polygon(points=[[0,0],[pole_width,0],[pole_width/2, pole_width]]);
        }
    }

}

color("blue") {
    translate([sign_width / 2, sign_height/2, sign_thickness]) {
        rotate([0, 0, 180]) {
            linear_extrude(height = text_thickness) {
                translate([0, 15]) {
                    text("Nicole's",  halign = "center", valign = "center");    
                }
                text("mini",  halign = "center", valign = "center");
                translate([0, -15]) {
                    text("moestuin",  halign = "center", valign = "center");    
                }
            }
        }
    }
}
