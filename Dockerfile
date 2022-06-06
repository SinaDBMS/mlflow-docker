FROM python:3.8-slim

WORKDIR mlflow

RUN pip install mlflow

EXPOSE 5000

CMD ["mlflow", "server", "-h 0.0.0.0", "--backend-store-uri", "file:///mlflow/mlruns"]
