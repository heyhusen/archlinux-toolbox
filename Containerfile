FROM quay.io/toolbx/arch-toolbox:latest

RUN pacman -S --noconfirm \
      fish \
      starship \
      zoxide \
      helix \
			fastfetch \
			fzf \
    && pacman -Scc --noconfirm
