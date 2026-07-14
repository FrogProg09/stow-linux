-- STARTUP PROGRAMS SETUP

hl.on("hyprland.start", function()
  hl.exec_cmd("hyprpaper")
  hl.exec_cmd("waybar")
  hl.exec_cmd("swaync")
  hl.exec_cmd("/usr/lib/polkit-gnome/polkit-gnome-authentication-agent-1")
  hl.exec_cmd("emacs --daemon &")
  hl.exec_cmd("/usr/bin/miniserve ~/.config/StartTree -p 9876 --index index.html & disown")
end)
