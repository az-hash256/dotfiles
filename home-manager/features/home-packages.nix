{ config, pkgs, ...}:

{
  home.packages = with pkgs; [
    htop
    neofetch
    wl-clipboard
    dolphin
    betterdiscordctl
    discord
    gimp
    lean4
    obsidian
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "electron-24.8.6"
    "electron-25.9.0"
  ];

}
