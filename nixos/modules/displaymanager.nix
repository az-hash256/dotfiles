# Configures keymap in X11, enables displaymanager and XFCE.
{
  services = {
    xserver = {
      layout = "us";
      xkbVariant = "";
      enable = true;
      displayManager = {
        sddm.enable = true;
        sddm.theme = "/usr/share/sddm/themes/sddm-sugar-dark";
      };
    };
  };
}
