FROM redis:alpine
COPY sentinel.conf /sentinel.conf
RUN chown redis:redis /sentinel.conf
CMD [ "redis-server", "/sentinel.conf" "--sentinel" ]
