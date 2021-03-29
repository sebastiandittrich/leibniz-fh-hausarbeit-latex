FROM ubuntu:20.10

RUN apt update
RUN DEBIAN_FRONTEND=noninteractive apt install -y -q texlive texlive-bibtex-extra biber texlive-xetex
COPY ./arial-font/ /arial-font/
RUN ls /arial-font
RUN mkdir -p ~/.local/share/fonts && cp /arial-font/*.ttf ~/.local/share/fonts
RUN apt install -y git

VOLUME /project
