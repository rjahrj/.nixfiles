{ config, pkgs, ... }:

{
  imports = [
    ./herbst.nix
  ];

  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "rj";
  home.homeDirectory = "/home/rj";

  home.stateVersion = "22.05";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    herbstluftwm  
    surf
    enpass
    google-chrome
  ];

  programs = {
    git = {
      enable = true;
      userName = "rj";
      userEmail = "rjahrj@gmail.coma";
      extraConfig = {
        pull = {
	  rebase = true;
	};
      };
    };
    fish = {
      enable = true;
    };
  };

  home.sessionVariables = {
    EDITOR = "vim";
  };
}
