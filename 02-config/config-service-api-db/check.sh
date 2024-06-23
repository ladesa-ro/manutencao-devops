#!/bin/bash

set -xe

if [[ "${LADESA_DEPLOY_NS_LOCAL_SERVICE_API}" == "true" ]]; then
  kubectl get secret ladesa-ro-api-db-config --namespace=ladesa-ro-local;
fi

if [[ "${LADESA_DEPLOY_NS_DEVELOPMENT_SERVICE_API}" == "true" ]]; then
  kubectl get secret ladesa-ro-api-db-config --namespace=ladesa-ro-development;
fi

if [[ "${LADESA_DEPLOY_NS_PRODUCTION_SERVICE_API}" == "true" ]]; then
  kubectl get secret ladesa-ro-api-db-config --namespace=ladesa-ro-production;
fi