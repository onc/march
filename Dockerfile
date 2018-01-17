FROM nfnty/arch-mini

# Install needed packages
RUN pacman --noconfirm -Syyu && pacman --noconfirm -S \
    base \
    base-devel \
    clang \
    valgrind \
    cmake \
    git \
    zsh \
    xorg-server \
    mesa-libgl \
    libxrandr \
    libxinerama \
    libxcursor \
    libxi \
    glu

# Install oh-my-zsh
RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# Copy the basic zshrc into the container
COPY ./zshrc /root/.zshrc

# Change into the app dir
WORKDIR /app
# Default command for the container
CMD /bin/zsh
