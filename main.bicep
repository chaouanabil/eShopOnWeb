

param storagePrefix string = 'stg'
param storageName string = '${storagePrefix}${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(storageName , '11')
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}

resource storageaccount2 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(storageName , '8')
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}

resource storageaccount3 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(storageName , '10')
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}
