{ inputs
, outputs
, pkgs
, ...
}: {
  imports = [
#   ./nvim.nix

#    ./gtk.nix

#    ./gh.nix
#    ./gpg.nix
     ./git.nix
#    ./pass.nix
    ./sh.nix
#    ./helix.nix
#    ./zathura.nix
#    ./starship.nix

#    ./players.nix
     ./browsers.nix
#    ./terminals.nix

#    ./dotfiles.nix

#    inputs.nur.hmModules.nur
  ];

 # nixpkgs = {
 #   overlays = [
 #     outputs.overlays.additions
 #     outputs.overlays.modifications
 #     outputs.overlays.unstable-packages
 #   ];
 #   config = {
 #     allowUnfree = true;
 #     allowUnfreePredicate = _: true;
 #     pulseaudio = true;
 #   };
 # };

  home = {
    username = "melkam";
    homeDirectory = "/home/melkam";
    packages = with pkgs; [
      
#      gnome-disk-utility
#      transmission_4-gtk
#      inputs.tuime.defaultPackage.${pkgs.system}
#      inputs.lobste-rs.packages.${pkgs.system}.bin
#      inputs.watchbox.packages.${pkgs.system}.default
#      inputs.mekuteriya.packages.${pkgs.system}.default
#      inputs.license-gen.packages.${pkgs.system}.default
#      inputs.murder_tool.packages.${pkgs.system}.default
	#      inputs.lessonalyzer.packages.${pkgs.system}.default
#      (openai-whisper-cpp.override { cudaSupport = true; })
    ];
  };

  programs.htop.enable = true;
  programs.home-manager.enable = true;
  programs.obs-studio.enable = true;

#  programs.atuin = {
#    enable = true;
#    enableFishIntegration = true;
#  };

#  programs.direnv = {
#    enable = true;
#    nix-direnv.enable = true;
#  };

#  xdg.mimeApps.enable = true;

  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "24.05";
}
