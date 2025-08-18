FROM quay.io/toolbx/arch-toolbox:latest

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
	&& pacman -Scc --noconfirm
