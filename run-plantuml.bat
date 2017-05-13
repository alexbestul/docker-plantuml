@echo off
setlocal

set DOCKER_IMAGE="miy4/plantuml"
set HOST_SRC_VOLUME=%cd%
set CONTAINER_DEST_VOLUME=/work

docker run --volume="%HOST_SRC_VOLUME%:%CONTAINER_DEST_VOLUME%" --workdir=%CONTAINER_DEST_VOLUME% --rm --attach=stdin --attach=stdout --interactive %DOCKER_IMAGE% %*
