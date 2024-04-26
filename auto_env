
pacman -S xorg-server xorg-xinit libx11 libxinerama libxft libxrandr unzip ninja xf86-video-intel intel-ucode mesa opengl-man-pages alsa-utils pulseaudio-alsa ffmpeg mpv yt-dlp ttf-jetbrains-mono noto-fonts-cjk tmux xclip ripgrep zathura zathura-djvu zathura-pdf-mupdf firefox rust npm go
https://github.com/code-patricio/scripts
mkdir builds
cd builds
git clone --depth 1 https://git.suckless.org/dwm
git clone --depth 1 https://git.suckless.org/dmenu
git clone --depth 1 https://git.suckless.org/st
git clone --depth 1 https://aur.archlinux.org/jmtpfs.git
git clone --depth 1 https://aur.archlinux.org/youtube-viewer-git.git
git clone --depth 1 https://github.com/neovim/neovim
cd dwm
cp ~/dotfiles/dwm/config.h .
sudo make clean install
cd ../dmenu
cp ~/dotfiles/dmenu/config.h .
sudo make clean install
cd ../st
path < ~/dotfiles/st-scrollback.diff
cp ~/dotfiles/st/config.h .
sudo make clean install
cd ../jmtpfs
makepkg -sic
cd ../youtube-viewer-git
makepkg -sic
cd ../neovim
make CMAKE_BUILD_TYPE=RelWithDebInfo
sudo make clean install
cd ~/dotfiles
cp arch/.xinitrc ~/.
cp arch/.bashrc ~/.


