# nginx-server
This is a slightly customized version of the official nginx container that
allows changing the user and group ID that the nginx process runs under. This
allows you to match the user IDs to existing user IDs on your host system so
that file permissions are easier to manage on host volumes.

For example, the www-data user/group on my system uses ID 33, so to match that
in the container:
```
docker image build --build-arg USER_ID=33 --build-arg GROUP_ID=33 -t nginx_server .
```
