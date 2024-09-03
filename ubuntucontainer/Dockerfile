# Use the official Ubuntu base image
FROM ubuntu:latest

# Update and install OpenSSH server
RUN apt-get update && apt-get install -y openssh-server

# Create a directory for SSH server
RUN mkdir /var/run/sshd

# Set root password (change 'yourpassword' to a strong password)
RUN echo 'root:yourpassword@1' | chpasswd

# Expose SSH port
EXPOSE 22

# Start the SSH server
CMD ["/usr/sbin/sshd", "-D"]
