FROM quay.io/toolbx/arch-toolbox:latest

RUN pacman -S --noconfirm \
      fish \
      starship \
      zoxide \
      helix \
			fastfetch \
			fzf \
			gitui \
    && pacman -Scc --noconfirm
