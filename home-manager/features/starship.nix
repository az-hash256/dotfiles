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
          style = "fg:crust bg:lavender";
          format = "[ $path ]($style)";
        };

        git_branch = {
          style = "bg:mauve";
          format = "[[ $symbol $branch ](fg:crust bg:mauve)]($style)";
          symbol = "";
        };

        git_status = {
          style = "bg:mauve";
          format = "[[($all_status$ahead_behind )](fg:crust bg:mauve)]($style)";
        };

        nodejs = {
          symbol = "";
          style = "bg:blue";
          format = "[[ $symbol ($version) ](fg:crust bg:blue)]($style)";
        };

        java = {
          symbol = "";
          style = "bg:blue";
          format = "[[ $symbol ($version) ](fg:crust bg:blue)]($style)";
        };

        julia = {
          symbol = "";
          style = "bg:blue";
          format = "[[ $symbol ($version) ](fg:crust bg:blue)]($style)";
        };

        python = {
          symbol = "";
          style = "bg:blue";
          format = "[[ $symbol ($version) ](fg:crust bg:blue)]($style)";
        };

        haskell = {
          symbol = "";
          style = "bg:blue";
          format = "[[ $symbol ($version) ](fg:crust bg:blue)]($style)";
        };

        time = {
          disabled = false;
          time_format = "%R"; # Hour:Minute Format
          style = "bg:sapphire";
          format = "[[   $time ](fg:crust bg:sapphire)]($style)";
        };

        format = lib.concatStrings [
          "[█](teal)"
          "[   ](bg:teal fg:crust)"
          "[█](bg:lavender fg:teal)"
          "$directory"
          "[█](fg:lavender bg:mauve)"
          "$git_branch"
          "$git_status"
          "[█](fg:mauve bg:blue)"
          "$nodejs"
          "$haskell"
          "$python"
          "$java"
          "$julia"
          "[█](fg:blue bg:sapphire)"
          "$time"
          "[█ ](fg:sapphire)"
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
