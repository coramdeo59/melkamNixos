{ config, pkgs, ... }:
let 
     myAliases =  {
      # File and Directory Navigation
      ll = "ls -la";
      la = "ls -A";
      l = "ls -l";
      ".." = "cd ..";
      "..." = "cd ../..";
      cdhome = "cd ~";
      mkdirp = "mkdir -p";

      # Git Commands
      g = "git";
      gs = "git status";
      ga = "git add";
      gc = "git commit";
      gcm = "git commit -m";
      gp = "git push";
      gl = "git pull";
      gb = "git branch";
      gco = "git checkout";
      gcl = "git clone";
      gd = "git diff";

      # Docker Commands
      d = "sudo docker";
      dps = "sudo docker ps";
      dpsa = "sudo docker ps -a";
      di = "sudo docker images";
      dirm = "sudo docker rmi";
      dc = "sudo docker-compose";
      dcb = "sudo docker-compose build";
      dcu = "sudo docker-compose up";
      dcd = "sudo docker-compose down";
      dce = "sudo docker-compose exec";
      dcl = "sudo docker-compose logs";
      dci = "sudo docker-compose images";
      dct = "sudo docker-compose top";
      dpr = "sudo docker run";
      dvol = "sudo docker volume ls";
      dnet = "sudo docker network ls";
      dlog = "sudo docker logs";

      # Nix Commands
      nix = "nix";
      nixpkgs = "nix-env -iA nixpkgs";
      nixos = "nixos-rebuild";
      nixos-rebuild = "sudo nixos-rebuild";

      # Home Manager Commands
      hm = "home-manager";
      hms = "home-manager switch";
      hmr = "home-manager build";

      # System Monitoring
      top = "htop";
      mem = "free -h";
      disk = "df -h";
      cpu = "mpstat";

      # Miscellaneous
      cl = "clear";
      h = "history";
      grep = "grep --color=auto";
      x = "xargs";
   };
in
{
  programs.bash = {
    enable = true;
    shellAliases = myAliases;
  };
  programs.zsh = {
    enable = true;
    shellAliases = myAliases;  
  };

# profileExtra = ''
#  export GPG_TTY=$(tty)
#'';

}
