FROM quay.io/toolbx/arch-toolbox:latest

RUN pacman -Syu --noconfirm \
	fish \
	starship \
	zoxide \
	helix \
	fastfetch \
	fzf \
	gitui \
	zed \
	vulkan-radeon \
	noto-fonts \
	ttf-jetbrains-mono-nerd \
	yaml-language-server \
	&& pacman -Scc --noconfirm
