{ config, pkgs, ... }:

{
    programs.git = {
    enable = true;
    userName = "az-hash256";
    userEmail = "arellafi@bu.edu";

     extraConfig = {
     # Sign all commits using ssh key
        commit.gpgsign = true;
        gpg.format = "ssh";
        user.signingkey = "~/.ssh/id_ed25519.pub";
      };
  };
}
