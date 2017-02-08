# CGI

## Dockerfile

Simple CGI-enabled Apache server on Ubuntu

Run with -t and -i options to ensure container continues to run.
Port 80 is exposed.
Use -v option to assign CGI directory to mount at /usr/lib/cgi-bin.

Example:
docker run -t -i -p 127.0.0.1:8080:80 -v cgi-bin:/usr/lib/cgi-bin darrenlester/apache-cgi