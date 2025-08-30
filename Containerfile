FROM quay.io/toolbx/arch-toolbox:latest

RUN pacman -Syu --noconfirm \
	fish \
	starship \
	zoxide \
	fastfetch \
	fzf \
	noto-fonts \
	ttf-jetbrains-mono-nerd \
	ncspot \
	mise \
	&& pacman -Scc --noconfirm
