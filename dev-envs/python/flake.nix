# flake.nix
{
  description = "Python Development Environment template";

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
  in {
    devShells.x86_64-linux.default =
      pkgs.mkShell
      {
        nativeBuildInputs = with pkgs; [
          # Defines a python + set of packages.
          (python3.withPackages (ps:
            with ps;
            with python3Packages; [
              jupyter
              ipython

              # Uncomment the following lines to make them available in the shell.
              pandas
              numpy
              matplotlib
              seaborn
            ]))
        ];
      };
  };
}
