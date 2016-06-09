with Interfaces.C;
with SDL.Video;

package SDL_gfx.Rotozoom is
   package C renames Interfaces.C;

   M_PI: constant := 3.141592654;
   SMOOTHING_OFF: constant := 0;
   SMOOTHING_ON: constant := 1;

   function rotozoomSurface
      (src    : SDL.Video.Surface_ptr;
       angle  : C.double;
       zoom   : C.double;
       smooth : C.int) return SDL.Video.Surface_ptr;
   pragma Import(C, rotozoomSurface, "rotozoomSurface");

   function rotozoomSurfaceXY
      (src    : SDL.Video.Surface_ptr;
       angle  : C.double;
       zoomx  : C.double;
       zoomy  : C.double;
       smooth : C.int) return SDL.Video.Surface_ptr;
   pragma Import(C, rotozoomSurfaceXY, "rotozoomSurfaceXY");

   procedure rotozoomSurfaceSize
      (width     : C.int;
       height    : C.int;
       angle     : C.double;
       zoom      : C.double;
       dstwidth  : access C.int;
       dstheight : access C.int);
   pragma Import(C, rotozoomSurfaceSize, "rotozoomSurfaceSize");

   procedure rotozoomSurfaceSizeXY
      (width     : C.int;
       height    : C.int;
       angle     : C.double;
       zoomx     : C.double;
       zoomy     : C.double;
       dstwidth  : access C.int;
       dstheight : access C.int);
   pragma Import(C, rotozoomSurfaceSizeXY, "rotozoomSurfaceSizeXY");
   
   function zoomSurface
      (src    : SDL.Video.Surface_ptr;
       zoomx  : C.double;
       zoomy  : C.double;
       smooth : C.int) return SDL.Video.Surface_ptr;
   pragma Import(C, zoomSurface, "zoomSurface");

   procedure zoomSurfaceSize
      (width     : C.int;
       height    : C.int;
       zoomx     : C.double;
       zoomy     : C.double;
       dstwidth  : access C.int;
       dstheight : access C.int);
   pragma Import(C, zoomSurfaceSize, "zoomSurfaceSize");

   function shrinkSurface
      (src     : SDL.Video.Surface_ptr;
       factorx : C.int;
       factory : C.int) return SDL.Video.Surface_ptr;
   pragma Import(C, shrinkSurface, "shrinkSurface");

   function rotateSurface90Degrees
      (src               : SDL.Video.Surface_ptr;
       numClockWiseTurns : C.int) return SDL.Video.Surface_ptr;
   pragma Import(C, rotateSurface90Degrees, "rotateSurface90Degrees");

end SDL_gfx.Rotozoom;
