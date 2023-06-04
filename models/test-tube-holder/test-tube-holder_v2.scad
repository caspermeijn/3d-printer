// Based on: https://www.thingiverse.com/thing:2773490
//
// SPDX-License-Identifier: CC-BY-NC-SA-4.0
// Copyright 2018 Ivo Meier <https://www.thingiverse.com/ivorness>
// Copyright 2022 Casper Meijn <casper@meijn.net>
// To view a copy of this license, visit http://creativecommons.org/licenses/by-nc-sa/4.0/

// Length of the cube:
laenge = 40; // [10:100]
// heigth of the cube:
hoehe = 50; // [10:100]
// heigth of the cube:
breite = 40; // [10:100]
// diameter of the glass
glas = 20; //[10:60]

toleranz = 0.25;
// cut (front):
auschnitt = 13; //[8:100]

// Basis-Rechteck
difference()
{

    cube([ laenge, breite, hoehe ]);

    union()
    {
        translate([ laenge / 2, breite / 2, hoehe / 3 ])
            cylinder(h = hoehe, d1 = glas + toleranz, d2 = glas + toleranz, $fn = 96);
        translate([ laenge / 2, breite / 2, hoehe / 3 ]) sphere(d = glas + toleranz, $fn = 96);

        translate([ laenge / 2 - auschnitt / 2, -10, hoehe / 2.5 ]) cube([ auschnitt, breite / 1.5, hoehe ]);

        translate([ laenge / 2, breite / 2, hoehe / 2.5 ]) rotate([ 90, 0, 0 ])
            cylinder(h = hoehe, d1 = auschnitt, d2 = auschnitt, $fn = 96);
    }
}