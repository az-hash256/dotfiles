{
  lib,
  pkgs,
  ...
}: {
  programs.starship = let
    flavour = "mocha"; # One of `latte`, `frappe`, `macchiato`, or `mocha`
  in {
    enable = true;
    # Configuration written to ~/.config/starship.toml
    settings =
      {
        add_newline = false;

        palette = "catppuccin_${flavour}";

        character = {
          success_symbol = "[⊤](bold green)";
          error_symbol = "[⊥](bold red)";
        };

        directory = {
          style = "fg:mauve bg:mantle";
          format = "[ $path ]($style)";
        };

        git_branch = {
          style = "bg:surface0";
          format = "[[ $symbol $branch ](fg:lavender bg:surface0)]($style)";
          symbol = "";
        };

        git_status = {
          style = "bg:surface0";
          format = "[[($all_status$ahead_behind )](fg:lavender bg:surface0)]($style)";
        };

        node_js = {
          symbol = "";
          style = "bg:surface1";
          format = "[[ $symbol ($version) ](fg:blue bg:surface1)]($style)";
        };

        python = {
          symbol = "";
          style = "bg:surface1";
          format = "[[ $symbol ($version) ](fg:blue bg:surface1)]($style)";
        };

        haskell = {
          symbol = "";
          style = "bg:surface1";
          format = "[[ $symbol ($version) ](fg:blue bg:surface1)]($style)";
        };

        prolog = {
          symbol = "";
          style = "bg:surface1";
          format = "[[ $symbol ($version) ](fg:blue bg:surface1)]($style)";
        };

        time = {
          disabled = false;
          time_format = "%R"; # Hour:Minute Format
          style = "bg:surface2";
          format = "[[   $time ](fg:sapphire bg:surface2)]($style)";
        };

        format = lib.concatStrings [
          "[░▒▓](crust)"
          "[   ](bg:crust fg:blue)"
          "[](bg:mantle fg:crust)"
          "$directory"
          "[](fg:mantle bg:surface0)"
          "$git_branch"
          "$git_status"
          "[](fg:surface0 bg:surface1)"
          "$nodejs"
          "$haskell"
          "$python"
          "$prolog"
          "[](fg:surface1 bg:surface2)"
          "$time"
          "[ ](fg:surface2)"
          "$character"
        ];
      }
      // builtins.fromTOML (builtins.readFile
        (pkgs.fetchFromGitHub
          {
            owner = "catppuccin";
            repo = "starship";
            rev = "5629d23"; # Replace with the latest commit hash
            sha256 = "sha256-nsRuxQFKbQkyEI4TXgvAjcroVdG+heKX5Pauq/4Ota0=";
          }
          + /palettes/${flavour}.toml));
  };
}
