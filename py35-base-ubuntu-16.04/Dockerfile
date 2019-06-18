# Environment with Python 3.6 and dependencies for PyQt5

FROM ubuntu:16.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:99.0

# Install Python, git, and the dependencies for Qt
RUN apt-get update
RUN apt-get install -y xvfb git sudo \
                       python3 python3-dev python3-pip python3-wheel python3-tk \
                       libgtk2.0-dev libgl1-mesa-glx libegl1-mesa libxrandr2 \
                       libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 \
                       libxkbcommon-x11-0 libnss3 libxslt1.1 graphviz

# Copy over xvfb script
COPY start-xvfb /usr/bin

# Install a more recent version of pip
RUN pip3 install pip --upgrade --user

# Add user Python path to PATH
ENV PATH="/root/.local/bin:${PATH}"
