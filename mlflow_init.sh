#!/bin/bash
mlflow server --host 0.0.0.0 --backend-store-uri $BACKEND_STORE_URI -p 5000 --default-artifact-root $DEFAULT_ARTIFACT_ROOT