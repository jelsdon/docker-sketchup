FROM fedora
MAINTAINER jelsdon

RUN dnf -y update
RUN dnf install -y xorg-x11-drv-intel
RUN dnf install -y wine
RUN dnf install -y wine-mono
RUN dnf install -y file
RUN dnf install -y winetricks
RUN dnf install -y zenity
RUN winetricks --self-update

# Winetricks is taking care of install now
#RUN sha256sum -c <<< '45fd99a311367c29ea3860d09a259a24a366a5ab602481776260080193a22d4c *FW-3-0-16846-EN.exe'
