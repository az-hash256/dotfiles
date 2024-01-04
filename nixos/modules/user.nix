{ config, pkgs, ... }:

# Defining a user account.
{
 users.users.arellafi = {
   isNormalUser = true;
   description = "Azad Ellafi";
   extraGroups = [ "networkmanager" "wheel" "video" "audio" "lp" "scanner"];
   packages = with pkgs; [];
 };
}
