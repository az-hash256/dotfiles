{
  pkgs,
  config,
  ...
}: {
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {theme = "catppuccin_mocha";};
    languages = {
      language = [
        {
          auto-format = true;
          formatter.command = "alejandra";
          name = "nix";
        }
        {
          auto-format = true;
          formatter.command = "shfmt";
          name = "bash";
        }
      ];
    };
  };
}
