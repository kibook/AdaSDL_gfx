with Interfaces.C;
with SDL.Video;

package SDL_gfx.Primitives is
   package C renames Interfaces.C;

   function pixelColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, pixelColor, "pixelColor");

   function pixelRGBA
      (dst : SDL.Video.Surface_ptr;
       x   : C.short;
       y   : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, pixelRGBA, "pixelRGBA");

   function hlineColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       x2    : C.short;
       y     : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, hlineColor, "hlineColor");

   function hlineRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       x2  : C.short;
       y   : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, hlineRGBA, "hlineRGBA");

   function vlineColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y1    : C.short;
       y2    : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, vlineColor, "vlineColor");

   function vlineRGBA
      (dst : SDL.Video.Surface_ptr;
       x   : C.short;
       y1  : C.short;
       y2  : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, vlineRGBA, "vlineRGBA");

   function rectangleColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, rectangleColor, "rectangleColor");

   function rectangleRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       y1  : C.short;
       x2  : C.short;
       y2  : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, rectangleRGBA, "rectangleRGBA");

   function roundedRectangleColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       rad   : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, roundedRectangleColor, "roundedRectangleColor");

   function roundedRectangleRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       y1  : C.short;
       x2  : C.short;
       y2  : C.short;
       rad : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, roundedRectangleRGBA, "roundedRectangleRGBA");

   function boxColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, boxColor, "boxColor");

   function boxRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       y1  : C.short;
       x2  : C.short;
       y2  : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, boxRGBA, "boxRGBA");

   function roundedBoxColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       rad   : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, roundedBoxColor, "roundedBoxColor");

   function roundedBoxRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       y1  : C.short;
       x2  : C.short;
       y2  : C.short;
       rad : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, roundedBoxRGBA, "roundedBoxRGBA");

   function lineColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, lineColor, "lineColor");

   function lineRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       y1  : C.short;
       x2  : C.short;
       y2  : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, lineRGBA, "lineRGBA");

   function aalineColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, aalineColor, "aalineColor");

   function aalineRGBA
      (dst : SDL.Video.Surface_ptr;
       x1  : C.short;
       y1  : C.short;
       x2  : C.short;
       y2  : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, aalineRGBA, "aalineRGBA");

   function thickLineColor
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       width : C.unsigned_char;
       color : C.unsigned) return C.int;
   pragma Import(C, thickLineColor, "thickLineColor");

   function thickLineRGBA
      (dst   : SDL.Video.Surface_ptr;
       x1    : C.short;
       y1    : C.short;
       x2    : C.short;
       y2    : C.short;
       width : C.unsigned_char;
       r     : C.unsigned_char;
       g     : C.unsigned_char;
       b     : C.unsigned_char;
       a     : C.unsigned_char) return C.int;
   pragma Import(C, thickLineRGBA, "thickLineRGBA");

   function circleColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       rad   : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, circleColor, "circleColor");

   function circleRGBA
      (dst : SDL.Video.Surface_ptr;
       x   : C.short;
       y   : C.short;
       rad : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, circleRGBA, "circleRGBA");

   function arcColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       rad   : C.short;
       start : C.short;
       fin   : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, arcColor, "arcColor");
       
   function arcRGBA
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       rad   : C.short;
       start : C.short;
       fin   : C.short;
       r     : C.unsigned_char;
       g     : C.unsigned_char;
       b     : C.unsigned_char;
       a     : C.unsigned_char) return C.int;
   pragma Import(C, arcRGBA, "arcRGBA");

   function aacircleColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       rad   : C.short;
       r     : C.unsigned_char;
       g     : C.unsigned_char;
       b     : C.unsigned_char;
       a     : C.unsigned_char) return C.int;
   pragma Import(C, aacircleColor, "aacircleColor");

   function aacircleRGBA
      (dst : SDL.Video.Surface_ptr;
       x   : C.short;
       y   : C.short;
       rad : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, aacircleRGBA, "aacircleRGBA");

   function filledCircleColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       rad   : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, filledCircleColor, "filledCircleColor");

   function filledCircleRGBA
      (dst : SDL.Video.Surface_ptr;
       x   : C.short;
       y   : C.short;
       rad : C.short;
       r   : C.unsigned_char;
       g   : C.unsigned_char;
       b   : C.unsigned_char;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, filledCircleRGBA, "filledCircleRGBA");

   function ellipseColor
      (dst   : SDL.Video.Surface_ptr;
       x     : C.short;
       y     : C.short;
       rx    : C.short;
       ry    : C.short;
       color : C.unsigned) return C.int;
   pragma Import(C, ellipseColor, "ellipseColor");

   --TODO: function ellipseRGBA

   --TODO: function aaellipseColor

   --TODO: function aaellipseRGBA

   --TODO: function filledEllipseColor

   --TODO: function filledEllipseRGBA

   --TODO: function pieColor

   --TODO: function pieRGBA

   --TODO: function filledPieColor

   --TODO: function filledPieRGBA

   --TODO: function trigonColor

   --TODO: function trigonRGBA

   --TODO: function aatrigonColor
   
   --TODO: function aatrigonRGBA

   --TODO: function filledTrigonColor

   --TODO: function filledTrigonRGBA

   --TODO: function polygonColor

   --TODO: function polygonRGBA

   --TODO: function aapolygonColor

   --TODO: function aapolygonRGBA

   --TODO: function filledPolygonColor

   --TODO: function filledPolygonRGBA

   --TODO: function texturedPolygon

   --TODO: function filledPolygonColorMT

   --TODO: function filledPolygonRGBAMT

   --TODO: function texturedPolygonMT

   --TODO: function bezierColor

   --TODO: function bezierRGBA

   --TODO: function SetFont

   --TODO: function SetFontRotation

   --TODO: function characterColor

   --TODO: function characterRGBA

   --TODO: function stringColor

   --TODO: function stringRGBA

end SDL_gfx.Primitives;
