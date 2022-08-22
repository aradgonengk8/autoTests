FROM ubuntu:18.04

RUN apt-get update && apt-get install -y libcanberra-gtk-module libcanberra-gtk3-module x11vnc xvfb wget default-jdk unzip
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN wget https://selenium-release.storage.googleapis.com/3.9/selenium-server-standalone-3.9.1.jar
RUN wget https://chromedriver.storage.googleapis.com/104.0.5112.79/chromedriver_linux64.zip
RUN unzip chromedriver_linux64.zip
RUN mv chromedriver /usr/bin/chromedriver
RUN chown root:root /usr/bin/chromedriver
RUN chmod +x /usr/bin/chromedriver
RUN apt install -y ./google-chrome-stable_current_amd64.deb

COPY entrypoint.sh entrypoint.sh
