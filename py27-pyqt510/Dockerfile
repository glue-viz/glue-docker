# Environment with Python 2.7 and PyQt 5.10

FROM ubuntu:18.04

ENV DEBIAN_FRONTEND=noninteractive
ENV DISPLAY=:99.0

# Install Python and PyQt
RUN apt-get update
RUN apt-get install -y xvfb \
                       python=2.7.15~rc1-1 \
                       python-dev \
                       python-pip python-wheel \
                       python-pyqt5=5.10.1+dfsg-1ubuntu2 \
                       python-pyqt5.qtsvg \
                       python-pyqt5.qtwebengine \
                       python-pyqt5.qtopengl

# Install git
RUN apt-get install -y git

# Copy over xvfb script
COPY start-xvfb /usr/bin

# Install more recent version of pip
RUN pip install pip --upgrade --user

# Add user Python path to PATH
ENV PATH="/root/.local/bin:${PATH}"
