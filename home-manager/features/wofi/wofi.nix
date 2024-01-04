{ config, pkgs, ... }:

let
  styleFile = ./style.css;
in

{
  programs.wofi = {
    enable = true;
    style = builtins.readFile styleFile;
  };
}
