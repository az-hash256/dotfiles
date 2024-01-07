{
  pkgs,
  config,
  ...
}: {
  programs.bash.enable = true;
  programs.bash.enableCompletion = true;
  programs.bash.bashrcExtra = ''eval "$(starship init bash)"'';
}
