{config, lib,  pkgs, ...}:

{
  xsession = {
    enable = true;
    windowManager = {
      herbstluftwm = {
        enable = true;
	tags = [ "1" ];
	keybinds = {
	  Mod4-Return = "spawn xterm"; 
	  Mod4-Shift-q ="quit"
	  Mod4-Shift-r ="reload"
	  Mod4-Shift-c ="close"

	  Mod4-h ="focus left"
	  Mod4-j ="focus down"
	  Mod4-k ="focus up"
	  Mod4-l ="focus right"

	  Mod4-Shift-h ="shift left"
	  Mod4-Shift-j ="shift down"
	  Mod4-Shift-k ="shift up"
	  Mod4-Shift-l ="shift right"

	  Mod4-u = "split bottom 0.5"
	  Mod4-o = "split right 0.5"
	};
	settings = {
	 window_border_active_color = "#7F00FF";
	};
	extraConfig = ''
	  hc detect_monitors
	'';
      };
    };
  };
}
