{
  pkgs,
  config,
  ...
}: {
  programs.wezterm = {
    enable = true;
    extraConfig = ''
      return {
        default_cursor_style = 'BlinkingBlock',
        color_scheme = 'Catppuccin Mocha',
        enable_tab_bar = false,
        font = wezterm.font('Iosevka'),
        term = 'wezterm',
        window_close_confirmation = 'NeverPrompt',
      }
    '';
  };
}
