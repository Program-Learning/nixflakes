A wise man once said: ` 'There is beauty in simplicity'. ` 

That man hadn't yet plunged into the depths of `Nix` packaging or beheld the orchestrated complexity of `NixOS`. 

I like simple things, so you may find that there is not all that much complex going on in this repository. I do not build any of my own packages or make extreme modifications to any of the example configurations I have found online that make up this motley crew of `.nix`. What I can say, is that the `main` branch of this configuration is relatively thoroughly tested.  

`NixOS` is not a simple thing. You'll probably learn that quickly if you do end up falling down this pit. I had a lot of dotfiles, I didnt like managing a lot of dotfiles. The DevOps side of my brain knew there must be something better.

`Nix` and `NixOS` started as an echo in my mind some several months ago. An internet hooligan that probably didn't even know what they were talking about introduced me to the idea while I was perusing public `dotfiles` and somehow it reverberated. It's evolved into an ever deepening rabbit hole of declaration, stability and reproduceability.

I am not an authority on `Nix` or `NixOS`. I am merely an apprentice, an Alice navigating the wonderland. At least for now.

Was it worth it? ***Oh heavens no sweet child. Turn back now while you still can, you've been warned.***

So anyways. Here's my dots. I hope you like them.

# Eriim's Nixflakes

```
There are many paths to the top of the mountain, but the view is always the same.
```

[How to use this repo](docs/usage.md)

[Getting Started with NixOS Minimal](docs/minimal-install.md)

### Flake Structure
Modules are grouped to be ***almost*** purely *functional* and as a result you will often find both the system configuration and the home-manager configuration in the same place. Not all NixOS users use this paradigm.

This repo has become more opinionated over time and now requires passing down variables from the `flake.nix` in order to fetch appropriate modules and packages and eventually theming elements. 

![Flake Structure](docs/screens/FlakeStructure4.png)

![Flake Profiles](docs/screens/FlakeProfiles3.png)

## Screenshots

Current 
------
![Hyprland](docs/screens/hyprland4.png)
![Hyprland](docs/screens/hyprland5.png)

October 2023
------
![Hyprland](docs/screens/hyprland1.png)

![Hyprland1](docs/screens/hyprland2.png)

![Hyprland3](docs/screens/hyprland3.png)

### My Nixdots Contain Configurations for

#### Core Modules
- Boot
- Security Config ([Yubico](https://www.yubico.com/) Authentication)
  ##### Terminal Module
  - Editor: [`nvim`](https://neovim.io/), `vim`
  - Terminals: [`foot`](https://codeberg.org/dnkl/foot), [`alacritty`](https://github.com/alacritty/alacritty), [`wezterm`](https://wezfurlong.org/wezterm/index.html)
  - Shell: `bash`
  - [`btop` (Resource Monitoring)](https://github.com/aristocratos/btop)
  - [`cava` (Music Visualizer)](https://github.com/karlstav/cava)
  - [`nitch` (sysfetch)](https://github.com/ssleert/nitch)

#### Hyprland
- [Dotfiles](modules/hyprland/config/)
- [greetd](modules/hyprland/greetd/default.nix)
- [mako](modules/hyprland/mako/default.nix)
- [swaylock](modules/hyprland/swaylock/default.nix)
- [waybar](modules/hyprland/waybar/default.nix)
- [wofi](modules/hyprland/wofi/default.nix)

#### Apps
- [1Password](https://1password.com/)
- Browsers (Firefox, Chrome, Nyxt)
- [Discord](https://discord.com)
- [Obsidian](https://obsidian.md/)
- [VSCode](https://code.visualstudio.com/)

#### Extra Toys
- [OBS Studio](https://obsproject.com/) (for screen recording and streaming/sharing screen)
- Vidya (Steam, Wine)
- Virt (Docker, kvm/qemu)

#### Configurations
1. Desktop (retis) - 3 monitors

   - WM: [hyprland](https://hyprland.org/)
   - All core modules + nvidia

2. Laptop (sisyphus) - 1 monitor

   - WM: [hyprland](https://hyprland.org/)
   - Most core modules (no extra toys)

3. Laptop (icarus) - 1 monitor

   - WM: [hyprland](https://hyprland.org/)
   - Most core modules (no extra toys)

### To Be Done

- sops-nix/agenix for nixsecrets

[How to use this repo](docs/usage.md)

[Getting Started with NixOS Minimal](docs/minimal-install.md)
