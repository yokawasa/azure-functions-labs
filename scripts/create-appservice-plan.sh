#!/bin/bash
set -e -x

az appservice plan create --name $APP_SERVICE_PLAN_NAME --resource-group $RESOURCE_GROUP --sku Free
