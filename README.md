# Usage

`docker-compose up` (add `--build` to rebuild docker proxy image)

Default username/password: `test:test`. The auth is set up with basic auth (htppassword).

The file `squid.conf` contains all the config of the file, you can edit this file and restart service: `docker-compose restart proxy`

# Simple test

`HTTPS_PROXY=http://test:test@localhost:8888 curl https://google.com`


