# docker-kodi
X11rdp Version of Kodi
## About
Using this container allows you to run Mediathekview as a service and control it via webbrowser like Firefox or Chrome.
The X11rdp feature is inherited from [https://github.com/jlesage/docker-baseimage-gui](https://github.com/jlesage/docker-baseimage-gui).

## Installation
### Manual

1. Download Dockerfile or clone the repository.
2. Run `docker build .` to create the docker image.
3. Wait until build process is finished.

### Pre-build
The Github repository is automatically build by Github Actions.
You can pull it from GitHub Hub:
```
docker pull ghcr.io/firebird76/docker-kodi:nightly
```
Some older versions can also be acquired by using e.g.
```
docker pull ...
```


