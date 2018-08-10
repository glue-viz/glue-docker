# Environment with Python 3.6 and PyQt 5.10

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:99.0

# Install Python and PyQt
RUN apt-get update
RUN apt-get install -y xvfb \
                       python3=3.6.5-3ubuntu1 \
                       python3-dev \
                       python3-pip python3-wheel \
                       python3-pyqt5=5.10.1+dfsg-1ubuntu2 \
                       python3-pyqt5.qtsvg \
                       python3-pyqt5.qtwebengine \
                       python3-pyqt5.qtopengl

# Install git
RUN apt-get install -y git

# Copy over xvfb script
COPY start-xvfb /usr/bin

# Install more recent version of pip
RUN pip3 install pip --upgrade --user

# Add user Python path to PATH
ENV PATH="/root/.local/bin:${PATH}"
