{ config, pkgs, inputs, ... }:

{
  programs.firefox = {
    enable = true;
    profiles.woarna = {
       extensions = with inputs.firefox-addons.packages."x86_64-linux"; [
                    ublock-origin
                     ];
       userChrome = builtins.readFile ./userChrome.css;
       userContent = builtins.readFile ./userContent.css;
    };
  };
}
