{
  config,
  pkgs,
  ...
}: {
  home.packages = with pkgs; [
    htop
    neofetch
    wl-clipboard
    betterdiscordctl
    discord
    alejandra
    obsidian
    pavucontrol
    wget
    slurp
    grim
    dunst
    xdg-desktop-portal-hyprland
    xdg-user-dirs
    qt5.qtwayland
    qt6.qtwayland
    swww
  ];

  nixpkgs.config.permittedInsecurePackages = [
    "electron-24.8.6"
    "electron-25.9.0"
  ];
}
