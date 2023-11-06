FROM python:3-alpine
WORKDIR /app

COPY wrapper_entrypoint.sh /app
COPY run.py /app
RUN chmod +x /app/wrapper_entrypoint.sh
ENTRYPOINT ["/app/wrapper_entrypoint.sh"]
