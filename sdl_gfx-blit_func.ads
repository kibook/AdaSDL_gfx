with Interfaces.C;
with SDL.Video;

package SDL_gfx.Blit_Func is
   package C renames Interfaces.C;

   function BlitRGBA
      (src     : SDL.Video.Surface_ptr;
       srcrect : SDL.Video.Rect_ptr;
       dst     : SDL.Video.Surface_ptr;
       dstrect : SDL.Video.Rect_ptr) return C.int;
   pragma Import(C, BlitRGBA, "SDL_gfxBlitRGBA");

   function SetAlpha
      (src : SDL.Video.Surface_ptr;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, SetAlpha, "SDL_gfxSetAlpha");

   function MultiplyAlpha
      (src : SDL.Video.Surface_ptr;
       a   : C.unsigned_char) return C.int;
   pragma Import(C, MultiplyAlpha, "SDL_gfxMultiplyAlpha");

end SDL_gfx.Blit_Func;
