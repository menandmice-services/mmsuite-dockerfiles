Dockerfiles for building Docker container for MMSUITE components
================================================================

These Docker containers are based on Debian Linux. They can be used on
all Intel x64 Linux Distributions with a Docker installation (CentOS
7/RHEL 7, Debian, Ubuntu, SLES 12, OpenSUSE ...).

How to use:
-----------

 * Install docker
 * clone the mmsuite-dockerfile repository
 * change into each directory with a ```Dockerfile```
 * execute ```docker build -t <tag> .```
 * use the created Docker container