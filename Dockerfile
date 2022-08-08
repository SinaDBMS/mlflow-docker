FROM python:3.8-slim

WORKDIR mlflow

ARG BACKEND_STORE_URI='file:///mlflow/mlruns'
ARG DEFAULT_ARTIFACT_ROOT='file:///mlflow/artifacts'
ARG MLFLOW_PORT=5000

RUN pip install mlflow psycopg2-binary

EXPOSE ${MLFLOW_PORT}


ENTRYPOINT ["mlflow", "server", "--host", "0.0.0.0", "--backend-store-uri", "${BACKEND_STORE_URI}", \
    "-p", "5000","--default-artifact-root", "${DEFAULT_ARTIFACT_ROOT}"]
