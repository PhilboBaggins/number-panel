
// Number panel for putting in front of this mirror I found on Bunnings web site
// https://www.bunnings.com.au/cibo-design-900-x-600mm-white-frame-mirror_p4844165

include <../NumberPanel.scad>

outerDimensions = [900, 600];
wallThickness = 40; // TODO: Check this
size = outerDimensions - [wallThickness * 2, wallThickness * 2];

NumberPanel(size, 10, 20, DEFAULT_FONT);
