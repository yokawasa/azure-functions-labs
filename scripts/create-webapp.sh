#!/bin/bash
set -e -x

az webapp create --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP --plan $APP_SERVICE_PLAN_NAME
