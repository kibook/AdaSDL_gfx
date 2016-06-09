with Interfaces.C;

package SDL_gfx.Image_Filter is
   package C renames Interfaces.C;

   function MMXdetect return C.int;
   pragma Import(C, MMXdetect, "SDL_imageFilterMMXdetect");

   procedure MMXoff;
   pragma Import(C, MMXoff, "SDL_imageFilterMMXoff");

   procedure MMXon;
   pragma Import(C, MMXon, "SDL_imageFilterMMXon");

   function Add
      (Src1   : access C.unsigned_char;
       Src2   : access C.unsigned_char;
       Dest   : access C.unsigned_char;
       length : C.unsigned) return C.int;
   pragma Import(C, Add, "SDL_imageFilterAdd");

   function Mean
      (Src1: access C.unsigned_char;
       Src2: access C.unsigned_char;
       Dest: access C.unsigned_char;
       length: C.unsigned) return C.int;
   pragma Import(C, Mean, "SDL_imageFilterMean");

   function Sub
      (Src1: access C.unsigned_char;
       Src2: access C.unsigned_char;
       Dest: access C.unsigned_char;
       length: C.unsigned) return C.int;
   pragma Import(C, Sub, "SDL_imageFilterSub");

   --TODO: function AbsDiff
   --TODO: function Mult
   --TODO: function MultNor
   --TODO: function MultDivby2
   --TODO: function MultDivby4
   --TODO: function BitAnd
   --TODO: function BitOr
   --TODO: function Div
   --TODO: function BitNegation
   --TODO: function AddByte
   --TODO: function AddUint
   --TODO: function AddeByteToHalf
   --TODO: function SubByte
   --TODO: function SubUint
   --TODO: function ShiftRight
   --TODO: function ShiftRightUint
   --TODO: function MultByByte
   --TODO: function ShiftRightAndMultByByte
   --TODO: function ShiftLeftByte
   --TODO: function ShiftLeftUint
   --TODO: function ShiftLeft
   --TODO: function BinarizeUsingThreshold
   --TODO: function ClipToRange
   --TODO: function NormalizeLinear
   --TODO: function ConvolveKernel3x3Divide
   --TODO: function ConvolveKernel5x5Divide
   --TODO: function ConvolveKernel7x7Divide
   --TODO: function ConvolveKernel9x9Divide
   --TODO: function ConvolveKernel3x3ShiftRight
   --TODO: function ConvolveKernel5x5ShiftRight
   --TODO: function ConvolveKernel7x7ShiftRight
   --TODO: function ConvolveKernel9x9ShiftRight
   --TODO: function SobelX
   --TODO: function SobelXShiftRight
   --TODO: procedure AlignStack
   --TODO: procedure RestoreStack

end SDL_gfx.Image_Filter;
