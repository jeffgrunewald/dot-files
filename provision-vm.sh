#!/bin/bash -x

apt update \
    && apt upgrade -y \

    && apt install -y \
           git \
           emacs \
           libssl-dev \
           make \
           automake \
           autoconf \
           libncurses5-dev \
           gcc \
           unzip \

    && git clone https://github.com/syl20bnr/spacemacs ~/.emacs.d \

    && git clone https://github.com/jeffgrunewald/dot-files ~/dot-files \
    && cp ~/dot-files/.gitconfig ~/ \
    && cp ~/dot-files/.spacemacs ~/ \

    && git clone https://github.com/asdf-vm/asdf.git ~/.asdf \
    && asdf plugin-add erlang \
    && asdf plugin-add elixir \
    && asdf install erlang 21.3.3 \
    && asdf install elixir 1.8.1 \
    && asdf global erlang 21.3.3 \
    && asdf global elixir 1.8.1
