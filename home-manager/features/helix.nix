{ pkgs, config, ...}:

{
  programs.helix = {
    enable = true;
    defaultEditor = true;
    settings = {  theme = "gruvbox_dark_hard"; };
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
