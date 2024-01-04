{ config, pkgs, inputs, ... }:

{
  imports = [
    inputs.nix-colors.homeManagerModules.default
    ./features/git.nix
    ./features/enable_home-manager.nix
    ./features/sessionvariables.nix
    ./features/home-packages.nix
    ./features/alacritty.nix
    ./features/lf/lf.nix
    ./features/helix.nix
    ./features/firefox/firefox.nix
    ./features/wofi/wofi.nix
    ./features/waybar/waybar.nix
    ./features/hyprland/hyprland.nix
    ./features/enable_unfree.nix
    ./features/cursor.nix
    ./features/bash.nix
  ];

  colorScheme = inputs.nix-colors.colorSchemes.gruvbox-dark-medium;

  home.username = "arellafi";
  home.homeDirectory = "/home/arellafi";
  home.stateVersion = "23.11"; # Please read the comment before changing.

}
