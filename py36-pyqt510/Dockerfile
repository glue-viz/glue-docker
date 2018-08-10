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

# Start Xvfb
RUN /sbin/start-stop-daemon --start --quiet --pidfile /tmp/custom_xvfb_99.pid \
                            --make-pidfile --background --exec /usr/bin/Xvfb \
                            -- :99 -screen 0 1920x1200x24 -ac \
                            +extension GLX +render -noreset
