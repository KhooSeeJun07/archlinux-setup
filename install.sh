sudo pacman -S --needed --noconfirm \
wayland qt5-wayland qt6-wayland \
hyprland \
hyprlock \
kitty \
rofi \
neovim \
waybar \
dunst \
pipewire wireplumber \
xdg-desktop-portal-hyprland \
brightnessctl \
yazi 7zip \
zathura \
fastfetch \
cava \

sudo pacman -S --needed --noconfirm noto-fonts noto-fonts-cjk papirus-icon-theme
yay -S --needed --noconfirm bibata-cursor-theme-bin

mkdir ~/.config/hypr
mv ./config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
mv ./config/hypr/hyprlock.conf ~/.config/hypr/hyprlock.conf
mkdir ~/.config/kitty
mv ./config/kitty/kitty.conf ~/.config/kitty/kitty.conf
mkdir ~/.config/rofi
mv ./config/rofi/config.rasi ~/.config/rofi/config.rasi
mkdir ~/.config/waybar
mv ./config/waybar/config ~/.config/waybar/config
mv ./config/waybar/style.css ~/.config/waybar/style.css
git clone --depth 1 https://github.com/AstroNvim/template ~/.config/nvim
rm -rf ~/.config/nvim/.git

require_more() {
    while true; do
        read -p "Reboot? (y/n): " a
        case "$a" in
            y|Y)
                echo "Reboot..."
                sudo reboot
                break
                ;;
            n|N)
                echo "Finish Installation"
                break
                ;;
            more)
                echo "?????"
                return 1
                ;;
            *)
                echo "Invalid. Please enter y, n"
                ;;
        esac
    done
    return 0
}

if require_more; then
    exit 0
fi

echo "Install application for KhooSeeJun"

sudo pacman -S --needed --noconfirm mesa vulkan-radeon lib32-vulkan-radeon flatpak

yay -S --needed --noconfirm \
zen-browser-bin \
youtube-music-bin \
localsend-bin \

sudo pacman -S --needed --noconfirm \
discord \
jdk8-openjdk jdk17-openjdk jdk21-openjdk \
prismlauncher \
steam \
gamemode \
mangohud \
blender \
obs-studio \
gimp \
kdenlive \
libreoffice-fresh \
obsidian \
transmission-qt \
gnome-disk-utility \

flatpak install -y flathub \
io.mrarm.mcpelauncher \
org.vinegarhq.Sober \
com.github.tchx84.Flatseal \
