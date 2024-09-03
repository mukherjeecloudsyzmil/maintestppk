# Use the official Ubuntu base image
FROM ubuntu:22.04

# Install necessary packages
RUN apt-get update && apt-get install -y \
    xfce4 \
    xfce4-goodies \
    xrdp \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Configure XRDP to use XFCE
RUN echo "startxfce4" > ~/.xsession \
    && sed -i.bak '/^fi/a \
    xfce4-session &\n' /etc/xrdp/startwm.sh

# Expose the RDP port
EXPOSE 3389

# Start XRDP service
CMD ["sh", "-c", "service xrdp start && tail -f /var/log/xrdp.log"]
