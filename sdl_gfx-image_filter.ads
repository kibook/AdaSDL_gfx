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

end SDL_gfx.Image_Filter;
