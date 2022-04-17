{config, lib,  pkgs, ...}:

{
  xsession = {
    enable = true;
    windowManager = {
      herbstluftwm = {
        enable = true;
	tags = [ "1" ];
	keybinds = {
	  Mod = "Mod4";
	};
	settings = {
	 window_border_active_color = "#7F00FF";
	};

      };
    };
  };
}
