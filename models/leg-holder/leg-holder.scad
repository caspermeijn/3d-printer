height = 50;
gap_width = 26;
gap_height = 5;
width = 200;
depth = 40;

rotate([ 90, 0, 90 ])
{
    linear_extrude(depth)
    {
        polygon(points = [
            [ 0, 0 ],
            [ width / 2, 0 ],
            [ gap_width / 2, height ],
            [ gap_width / 2, gap_height ],
            [ -gap_width / 2, gap_height ],
            [ -gap_width / 2, height ],
            [ -width / 2, 0 ],
        ]);
    }
}