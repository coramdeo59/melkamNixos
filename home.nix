{ config, pkgs, ... }:
 
{
  imports = [
    ./home/default.nix

  ];

  # Home Manager needs a bit of information about you and the paths it should manage.
  home.username = "melkam";
  home.homeDirectory = "/home/melkam";

  # This value determines the Home Manager release that your configuration is compatible with.
  home.stateVersion = "24.05"; # Please read the comment before changing.

  # The home.packages option allows you to install Nix packages into your environment.
  home.packages = [
    pkgs.hello
    pkgs.vscode    
  ];
  

  # Home Manager can also manage your environment variables.
  home.sessionVariables = {
    # EDITOR = "emacs";
  };

  # Let Home Manager install and manage itself.
  programs.home-manager.enable = true;
  # allowing unfree packages
  nixpkgs.config.allowUnfree = true;
}
