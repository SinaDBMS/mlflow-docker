FROM python:3.8-slim

WORKDIR mlflow


ENV BACKEND_STORE_URI='file:///mlflow/mlruns'
ENV DEFAULT_ARTIFACT_ROOT='file:///mlflow/artifacts'

RUN mkdir "mlruns"

RUN pip install mlflow psycopg2-binary

EXPOSE 5000

COPY mlflow_init.sh .

RUN ["chmod", "+x", "/mlflow/mlflow_init.sh"]

ENTRYPOINT ["./mlflow_init.sh"]
