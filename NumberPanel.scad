
DEFAULT_FONT = "Helvetica";

DEBUG_TEXT = false;

module centeredText(text, area, resizeTextHeight, font)
{
    length = area[0];
    height = area[1];

    translate([(length / -2), 0])
    resize([length, resizeTextHeight ? height : 0], auto = true)
    text(text, font, valign = "center");
}

module NumberPanel(size, numX, numY, font, debugText)
{
    spacingX = size[0] / numX;
    spacingY = size[1] / numY;

    difference()
    {
        square(size);

        for (xIdx = [0 : numX - 1])
        for (yIdx = [0 : numY - 1])
        {
            x = spacingX * (xIdx + 0.5);
            y = spacingY * (yIdx + 0.5);            
            text = DEBUG_TEXT ? str(xIdx, ", ", yIdx) : str(round(rands(10000, 99999, 1)[0]));
            area = [spacingX*0.8, spacingY*0.8];

            translate([x, y]) centeredText(text, area, false, font);
        }
    }
}
