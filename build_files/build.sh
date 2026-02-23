#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

# this installs a package from fedora repos
dnf5 install -y tmux brightnessctl lxappearance thunar grim slurp clipman lxpolkit sway swaybg swayidle foot fuzzel dunst wlsunset 
dnf5 install -y waybar python3-adblock qutebrowser NetworkManager-tui blueman  xdg-desktop-portal-gtk xdg-desktop-portal-wlr wl-clipboard
# Use a COPR Example:
#
# dnf5 -y copr enable ublue-os/staging
# dnf5 -y install package
# Disable COPRs so they don't end up enabled on the final image:
# dnf5 -y copr disable ublue-os/staging
# Enable the community repository
dnf5 -y copr enable atim/i3status-rust

# Install the package
dnf5 -y install i3status-rust
#### Example for enabling a System Unit File

dnf5 -y copr disable atim/i3status-rust


systemctl enable podman.socket
