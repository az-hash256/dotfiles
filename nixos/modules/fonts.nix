{ config, pkgs, ... }:

{
 fonts.packages = with pkgs; [
   iosevka
   font-awesome
   nerdfonts
];
}
