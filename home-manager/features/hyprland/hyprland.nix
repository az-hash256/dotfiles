{ config, pkgs, ...}:
let
  hyprlandConfig = ./hyprland.conf;
in
{
  wayland.windowManager.hyprland = {
    enable = true;
    extraConfig = builtins.readFile hyprlandConfig;
  };
}
