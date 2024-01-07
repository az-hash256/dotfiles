{
  pkgs,
  config,
  ...
}: {
  programs.bash.enable = true;
  programs.bash.enableCompletion = true;
  programs.bash.bashrcExtra = ''PS1="\[\e[0;35m\][λ:\w]\$\[\e[0m\] "'';
}
