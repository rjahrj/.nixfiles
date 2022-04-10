{ config, pkgs, ... }:

{
  # Home Manager needs a bit of information about you and the
  # paths it should manage.
  home.username = "rj";
  home.homeDirectory = "/home/rj";

  # This value determines the Home Manager release that your
  # configuration is compatible with. This helps avoid breakage
  # when a new Home Manager release introduces backwards
  # incompatible changes.
  #
  # You can update Home Manager without changing this value. See
  # the Home Manager release notes for a list of state version
  # changes in each release.
  home.stateVersion = "21.11";

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;

  home.packages = with pkgs; [
    git
    git-crypt
    gnupg
    pinentry_gtk2
    herbstluftwm
  ];

  programs = {
    git = {
      enable = true;
      userName = "rj";
      userEmail = "rjahrj@gmail.com";
    };
    gpg = {
      enable = true;
    };
    gh = {
      enable = true;
    }; 
  };

  services = {
  #  xserver = {
  #    windowManager = {
  #      herbstluftwm = {
  #        enable = true;
  #        configFile = null;
  #      };
  #    };
  #  };
    gpg-agent = {
      enable = true;
      pinentryFlavor = "gtk2";	 
    };
  };
}
