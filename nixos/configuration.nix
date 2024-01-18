# My Config File
{
  config,
  pkgs,
  inputs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
    ./modules/sound.nix
    ./modules/locale.nix
    ./modules/bootloader.nix
    ./modules/network.nix
    ./modules/bluetooth.nix
    ./modules/touchpad.nix
    ./modules/user.nix
    ./modules/unfree_packages.nix
    ./modules/hyprland.nix
    ./modules/displaymanager.nix
    ./modules/overlays.nix
    ./modules/environment_system_packages.nix
    ./modules/gnupg.nix
    ./modules/fonts.nix
    ./modules/enable_flakes.nix
    ./modules/nix.nix
    ./modules/enable_steam.nix
  ];

  system.stateVersion = "23.11"; # Did you read the comment?
}
