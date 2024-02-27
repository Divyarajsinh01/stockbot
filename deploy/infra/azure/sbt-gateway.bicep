param name string
param location string
param sku string
param zones array

resource name_resource 'Microsoft.Network/natGateways@2019-09-01' = {
  name: name
  location: location
  tags: {}
  sku: {
    name: sku
  }
  zones: zones
  properties: {
    publicIpAddresses: [
      {
        id: private_nat_gateway_publicip.id
      }
    ]
    publicIpPrefixes: []
    idleTimeoutInMinutes: 4
  }
}

resource private_nat_gateway_publicip 'Microsoft.Network/publicIpAddresses@2022-05-01' = {
  name: 'private-nat-gateway-publicip'
  location: 'southeastasia'
  sku: {
    name: 'Standard'
  }
  properties: {
    publicIPAllocationMethod: 'Static'
  }
}
