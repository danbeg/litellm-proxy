FROM python:3.11-slim

WORKDIR /app

RUN pip install litellm

COPY litellm_config.yaml ./

EXPOSE 4000

CMD ["litellm", "--config", "./litellm_config.yaml", "--port", "4000"]
