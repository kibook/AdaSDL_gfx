with Interfaces.C;

package SDL_gfx.Framerate is
   package C renames Interfaces.C;

   FPS_UPPER_LIMIT : constant := 200;
   FPS_LOWER_LIMIT : constant :=   1;
   FPS_DEFAULT     : constant :=  30;

   type FPSManager is
      record
         framecount : C.unsigned;
         rateticks  : C.C_float;
         baseticks  : C.unsigned;
         lastticks  : C.unsigned;
         rate       : C.unsigned;
      end record;
   pragma Convention(C, FPSManager);

   type FPSManager_ptr is access all FPSManager;
   pragma Convention(C, FPSManager_ptr);

   procedure initFramerate(manager: access FPSManager);
   pragma Import(C, initFramerate, "SDL_initFramerate");

   function setFramerate(manager: access FPSManager; rate: C.unsigned) return C.int;
   pragma Import(C, setFramerate, "SDL_setFramerate");

   function getFramerate(manager: access FPSManager) return C.int;
   pragma import(C, getFramerate, "SDL_getFramerate");
   
   function framerateDelay(manager: access FPSManager) return C.unsigned;
   pragma Import(C, framerateDelay, "SDL_framerateDelay");

end SDL_gfx.Framerate;
