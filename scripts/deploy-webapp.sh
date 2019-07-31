#!/bin/bash
set -e -x

echo "Deploying webapp"
az webapp deployment source config --name $WEBAPP_NAME \
  --resource-group $RESOURCE_GROUP --branch master --manual-integration \
  --repo-url https://github.com/Azure-Samples/storage-blob-upload-from-webapp

# Get Storage Key
STORAGE_KEY=$(az storage account keys list --account-name $STORAGE_ACCOUNT_NAME --resource-group $RESOURCE_GROUP --output tsv |head -1 | awk '{print $3}')

echo "Configuring webapp settings"
az webapp config appsettings set --name $WEBAPP_NAME --resource-group $RESOURCE_GROUP \
--settings AzureStorageConfig__AccountName=$STORAGE_ACCOUNT_NAME \
AzureStorageConfig__ImageContainer=images  \
AzureStorageConfig__ThumbnailContainer=thumbnails \
AzureStorageConfig__AccountKey=$STORAGE_KEY
