{config, lib,  pkgs, ...}:

{
  xsession = {
    enable = true;
    windowManager = {
      herbstluftwm = {
        enable = true;
      };
    };
  };
}
