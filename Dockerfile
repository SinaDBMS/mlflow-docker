FROM python:3.8-slim

WORKDIR mlflow


ENV BACKEND_STORE_URI='file:///mlflow/mlruns'
ENV DEFAULT_ARTIFACT_ROOT='file:///mlflow/artifacts'

RUN pip install mlflow psycopg2-binary boto3 azure-storage-blob

EXPOSE 5000

COPY mlflow_init.sh .

RUN ["chmod", "+x", "/mlflow/mlflow_init.sh"]

ENTRYPOINT ["./mlflow_init.sh"]
