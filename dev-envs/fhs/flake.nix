# flake.nix
{
  description = "FHS Environment template";

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
  };

  outputs = {
    self,
    nixpkgs,
    ...
  } @ inputs: let
    system = "x86_64-linux";
    pkgs = nixpkgs.legacyPackages.${system};
    fhs = pkgs.buildFHSUserEnv {
      name = "fhs-shell";
      targetPkgs = pkgs:
        (with pkgs; [
          gcc
          libtool
          udev
          alsa-lib
        ])
        ++ (with pkgs.xorg; [
          libX11
          libXcursor
          libXrandr
        ]);
      multiPkgs = pkgs: (with pkgs; [
        udev
        alsa-lib
      ]);
      runScript = "bash";
    };
  in {
    devShells.${system}.default = fhs.env;
  };
}
