#!/bin/bash -x

cd py27-pyqt510
docker build . -t glueviz/py27-pyqt510:1.2

cd ../py35-base-ubuntu-16.04
docker build . -t glueviz/py35-base-ubuntu-16.04:1.2

cd ../py35-pyqt57
docker build . -t glueviz/py35-pyqt57:1.2

cd ../py35-pyqt58
docker build . -t glueviz/py35-pyqt58:1.2

cd ../py35-pyqt59
docker build . -t glueviz/py35-pyqt59:1.2

cd ../py35-pyqt510
docker build . -t glueviz/py35-pyqt510:1.2

cd ../py36-base-ubuntu-18.04
docker build . -t glueviz/py36-base-ubuntu-18.04:1.2

cd ../py36-pyqt511
docker build . -t glueviz/py36-pyqt511:1.2

cd ../py36-pyqt512
docker build . -t glueviz/py36-pyqt512:1.2

cd ../py36-pyside511
docker build . -t glueviz/py36-pyside511:1.2

cd ../py36-pyside512
docker build . -t glueviz/py36-pyside512:1.2
