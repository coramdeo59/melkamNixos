{
  description = "NixOS Configuration with Home Manager";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-24.05";  # Use the appropriate version
    home-manager.url = "github:nix-community/home-manager/release-24.05";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    nix-software-center.url = "github:snowfallorg/nix-software-center";
  };

  outputs = { self, nixpkgs, nix-software-center, ... }: let
    system = "x86_64-linux";  # Adjust if necessary
    pkgs = nixpkgs.legacyPackages.${system};
  in {
    nixosConfigurations = {
      nixos = nixpkgs.lib.nixosSystem {
        inherit system;
        modules = [
          (import ./configuration.nix)  # Import configuration.nix here
          {
            environment.systemPackages = with pkgs; [
              nix-software-center.packages.${system}.nix-software-center  # Explicit reference
              # Other packages
            ];
          }
        ];
      };
    };
  };
}
