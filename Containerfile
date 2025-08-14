FROM quay.io/toolbx/arch-toolbox:latest

# RUN git clone https://aur.archlinux.org/paru-bin.git
# RUN cd paru-bin && makepkg -si --noconfirm

RUN pacman -Syu --noconfirm \
      fish \
      starship \
      zoxide \
      helix \
			fastfetch \
			fzf \
			gitui \
			bash-language-server \
			vscode-css-languageserver \
			vscode-html-languageserver \
			vscode-json-languageserver \
			lua-language-server \
			marksman \
			gopls \
			delve \
			go-tools \
			golangci-lint \
			rust-analyzer \
			svelte-language-server \
			tailwindcss-language-server \
			taplo-cli \
			typescript-language-server \
			vue-language-server \
			yaml-language-server

# RUN paru -S --noconfirm \
# 			dockerfile-language-server \
# 			jsonnet-language-server-bin \
# 			golangci-lint-langserver-bin \
# 			lemminx \
# 			astrojs-language-server \
# 			fish-lsp

RUN pacman -Scc --noconfirm
