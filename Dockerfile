FROM ubuntu:20.04

# Install cowsay
RUN apt-get update && apt-get install cowsay -y

# Copy the bash script to usr/bin
COPY ghostsay /usr/bin

# Change permissions to executable
RUN chmod +x /usr/bin/ghostsay

# Ghost says Hello Docker...
RUN ghostsay Hello Docker!!!

