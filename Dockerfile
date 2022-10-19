# Pull base image.
FROM jlesage/baseimage-gui:debian-11

# Set the name of the application.
ENV APP_NAME="Cura3D"
ENV APP_VERSION="4.13.1"

# Install xterm.
RUN add-pkg xterm sudo wget curl sed fuse

RUN mkdir -p /usr/share/cura
# RUN mkdir /config # already exists
RUN mkdir /storage
RUN mkdir /output
RUN chmod 777 /output

RUN wget -O /usr/share/cura/Ultimaker_Cura.AppImage https://github.com/Ultimaker/Cura/releases/download/${APP_VERSION}/Ultimaker_Cura-${APP_VERSION}.AppImage

# Grab latest version
# RUN wget -O /usr/share/cura/Ultimaker_Cura.AppImage $(curl -s https://api.github.com/repos/Ultimaker/Cura/releases | grep browser_download_url | grep '.AppImage' | head -n 1 | cut -d '"' -f 4)

# Link for 5.x versions. Current issues with GLIBC
# RUN wget -O /usr/share/cura/Ultimaker_Cura.AppImage https://github.com/Ultimaker/Cura/releases/download/${APP_VERSION}/Ultimaker-Cura-${APP_VERSION}-linux-modern.AppImage

RUN chmod a+x /usr/share/cura/Ultimaker_Cura.AppImage

# Copy the start script.
COPY startapp.sh /startapp.sh

# Define mountable directories.
VOLUME ["/config"]
VOLUME ["/storage"]
VOLUME ["/output"]

# Set the window name so full screen plugins (like Thingibrowser) can be closed
RUN sed-patch 's/<application type="normal">/<application type="normal" title="Ultimaker Cura">/' /etc/xdg/openbox/rc.xml

HEALTHCHECK CMD curl --fail http://localhost:5800 || exit 1 
