FROM busybox
COPY ./webserver/server /home
COPY ./website /srv/web
CMD /home/server