# docker-sketchup
Docker sketchup container - with printer support


`$ sudo docker run --rm --privileged -v="/etc/printcap:/etc/printcap:rw" -v="/var/run/cups/:/var/run/cups:rw" -v="/tmp/.X11-unix:/tmp/.X11-unix:rw" -e "DISPLAY=unix:0.0" -i -t fedoraglx /bin/bash`

Once running, install sketchup via
`winetricks -q sketchup`

# Notes

Winetricks install launches GUI -- no support for bind mounting X sockets in during docker build so post-install task (TODO entrypoint script)
Wine home directory to be volume mounted and bypass install (TODO entrypoint script)
Set HKEY_CURRENT_USER\Software\Google\SketchUp6\GLConfig\Display\HW_OK to 1 (TODO entrypoint script)
