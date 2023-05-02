

param storageName string = 'stg${uniqueString(resourceGroup().id)}'
param location string = resourceGroup().location

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(storageName , '1')
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}

resource storageaccount2 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(storageName , '2')
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}

resource storageaccount3 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: uniqueString(storageName , '3')
  location: location
  kind: 'StorageV2'
  sku: {
      name: 'Premium_LRS'
  }
}
