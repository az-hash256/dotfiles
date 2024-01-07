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
    vesktop
    alejandra
    nil
    statix
    obsidian
    zoom-us
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
