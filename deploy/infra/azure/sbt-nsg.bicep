{
  name: 'nodejs-nsg'
  id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg'
  etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
  type: 'Microsoft.Network/networkSecurityGroups'
  location: 'southeastasia'
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: '5b2bb26a-de65-44ce-a32d-f99af2b0a3d3'
    securityRules: [
      {
        name: 'SSH'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/securityRules/SSH'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/securityRules'
        properties: {
          provisioningState: 'Succeeded'
          protocol: 'TCP'
          sourcePortRange: '*'
          destinationPortRange: '22'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 300
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
    defaultSecurityRules: [
      {
        name: 'AllowVnetInBound'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/defaultSecurityRules/AllowVnetInBound'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow inbound traffic from all VMs in VNET'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 65000
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowAzureLoadBalancerInBound'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/defaultSecurityRules/AllowAzureLoadBalancerInBound'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow inbound traffic from azure load balancer'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'AzureLoadBalancer'
          destinationAddressPrefix: '*'
          access: 'Allow'
          priority: 65001
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'DenyAllInBound'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/defaultSecurityRules/DenyAllInBound'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Deny all inbound traffic'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Deny'
          priority: 65500
          direction: 'Inbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowVnetOutBound'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/defaultSecurityRules/AllowVnetOutBound'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow outbound traffic from all VMs to all VMs in VNET'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: 'VirtualNetwork'
          destinationAddressPrefix: 'VirtualNetwork'
          access: 'Allow'
          priority: 65000
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'AllowInternetOutBound'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/defaultSecurityRules/AllowInternetOutBound'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Allow outbound traffic from all VMs to Internet'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: 'Internet'
          access: 'Allow'
          priority: 65001
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
      {
        name: 'DenyAllOutBound'
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkSecurityGroups/nodejs-nsg/defaultSecurityRules/DenyAllOutBound'
        etag: 'W/"a4f0cc02-8222-4dab-8c2c-c765aae375b8"'
        type: 'Microsoft.Network/networkSecurityGroups/defaultSecurityRules'
        properties: {
          provisioningState: 'Succeeded'
          description: 'Deny all outbound traffic'
          protocol: '*'
          sourcePortRange: '*'
          destinationPortRange: '*'
          sourceAddressPrefix: '*'
          destinationAddressPrefix: '*'
          access: 'Deny'
          priority: 65500
          direction: 'Outbound'
          sourcePortRanges: []
          destinationPortRanges: []
          sourceAddressPrefixes: []
          destinationAddressPrefixes: []
        }
      }
    ]
    networkInterfaces: [
      {
        id: '/subscriptions/ca15ecd1-7d9c-4381-a24d-6dffde6a1c5b/resourceGroups/SbtDevRG/providers/Microsoft.Network/networkInterfaces/nodejs241_z1'
      }
    ]
  }
}
