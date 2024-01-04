# My Config File

{ config, pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
   eww-wayland
   home-manager
   ghc
   haskell-language-server
   nnn
   wget
   wezterm
   pavucontrol
   gnupg
   pinentry
   swiProlog
   dunst
   libsForQt5.kio-extras
   curl
   bash
   coreutils-full
   dbus
   qt5.qtwayland
   qt6.qtwayland
   xdg-desktop-portal-hyprland
   xdg-user-dirs
   slurp
   grim
   playerctl
   swww
  ];
}
