# My Config File
{
  config,
  pkgs,
  ...
}: {
  environment.systemPackages = with pkgs; [
    home-manager
    gnupg
    curl
    bash
    coreutils-full
  ];
}
