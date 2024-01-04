{ config, pkgs, ... }:
let
  styleFile = ./style.css;
  configFile = ./config;
in
{
  programs.waybar = {
    enable = true;
    settings = builtins.fromJSON (builtins.readFile configFile);
    style = builtins.readFile styleFile;
  };
}
