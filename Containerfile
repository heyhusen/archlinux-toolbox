FROM quay.io/toolbx/arch-toolbox:latest

RUN useradd -m builder && \
    echo 'builder ALL=(ALL) NOPASSWD: ALL' >> /etc/sudoers
WORKDIR /home/builder
USER builder

RUN git clone https://aur.archlinux.org/paru-bin.git
RUN cd paru-bin && makepkg -si --noconfirm

RUN paru -Syu --noconfirm \
	sql-language-server \
	jsonnet-language-server-bin \
	dockerfile-language-server \
	nodejs-compose-language-service \
	astrojs-language-server

USER root

RUN pacman -Syu --noconfirm \
	fish \
	starship \
	zoxide \
	helix \
	fastfetch \
	fzf \
	gitui \
	noto-fonts \
	ttf-jetbrains-mono-nerd \
	yaml-language-server \
	taplo-cli \
	bash-language-server \
	vscode-css-languageserver \
	gopls \
	vscode-json-languageserver \
	marksman \
	rust-analyzer \
	svelte-language-server \
	tailwindcss-language-server \
	typescript-language-server \
	vue-language-server \
	vscode-html-languageserver

RUN pacman -Scc --noconfirm

RUN rm -rf /home/*
