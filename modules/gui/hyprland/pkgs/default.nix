{pkgs, ...}:
with pkgs; [
  eww-wayland
  grim
  hyprpaper
  libsForQt5.kwallet
  libsForQt5.polkit-kde-agent
  mako
  slurp
  swaylock
  waybar
  wl-clipboard
  wofi 
  # Required if applications are having trouble opening links
  xdg-utils
]
