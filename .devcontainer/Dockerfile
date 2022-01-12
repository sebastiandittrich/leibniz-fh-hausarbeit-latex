FROM ubuntu:20.10

RUN apt update

# Xelatex
RUN DEBIAN_FRONTEND=noninteractive apt install -y -q texlive texlive-xetex git

# Pandoc
COPY ./pandoc-2.13-1-amd64.deb /pandoc-2.13-1-amd64.deb
RUN dpkg -i /pandoc-2.13-1-amd64.deb

# Fonts
COPY ./arial-font/ /arial-font/
RUN mkdir -p ~/.local/share/fonts && cp /arial-font/*.ttf ~/.local/share/fonts
RUN mkdir -p ~/.local/share/fonts && cp /arial-font/*.TTF ~/.local/share/fonts

VOLUME /project
