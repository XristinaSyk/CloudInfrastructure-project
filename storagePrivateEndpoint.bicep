@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/privateEndpoints/storageEndpoint')
resource storageEndpoint 'Microsoft.Network/privateEndpoints@2024-01-01' = {
  name: 'storageEndpoint'
  etag: 'W/"ce0981d4-d34d-4c11-aa0d-738000e8b9d4"'
  location: 'northeurope'
  tags: {
    'billing ': 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: 'f42e3493-0fc9-4261-b599-cdbff17d17ef'
    privateLinkServiceConnections: [
      {
        name: 'storageEndpoint'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/privateEndpoints/storageEndpoint/privateLinkServiceConnections/storageEndpoint'
        etag: 'W/"ce0981d4-d34d-4c11-aa0d-738000e8b9d4"'
        properties: {
          provisioningState: 'Succeeded'
          privateLinkServiceId: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Storage/storageAccounts/multistorageacc'
          groupIds: [
            'blob'
          ]
          privateLinkServiceConnectionState: {
            status: 'Approved'
            description: 'Auto-Approved'
            actionsRequired: 'None'
          }
        }
        type: 'Microsoft.Network/privateEndpoints/privateLinkServiceConnections'
      }
    ]
    manualPrivateLinkServiceConnections: []
    customNetworkInterfaceName: 'storageEndpoint-nic'
    subnet: {
      id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/blobSub'
    }
    ipConfigurations: []
    networkInterfaces: [
      {
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkInterfaces/storageEndpoint-nic'
      }
    ]
    applicationSecurityGroups: [
      {
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/applicationSecurityGroups/storageNSG'
      }
    ]
    customDnsConfigs: []
    isIPv6EnabledPrivateEndpoint: false
  }
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/applicationSecurityGroups/storageNSG')
resource storageNSG 'Microsoft.Network/applicationSecurityGroups@2024-01-01' = {
  name: 'storageNSG'
  etag: 'W/"4ef6994e-4e60-4757-870e-6ef84d1575a7"'
  location: 'northeurope'
  tags: {}
  properties: {
    provisioningState: 'Succeeded'
    privateEndpoints: [
      {
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/privateEndpoints/storageEndpoint'
      }
    ]
  }
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkInterfaces/storageEndpoint-nic')
resource storageEndpointnic 'Microsoft.Network/networkInterfaces@2024-01-01' = {
  name: 'storageEndpoint-nic'
  etag: 'W/"ce56dd3f-14ce-45ba-964a-6b6625442220"'
  tags: {
    'billing ': 'public'
  }
  properties: {
    provisioningState: 'Succeeded'
    resourceGuid: 'ee644438-b9fe-4019-a956-8c8812be41a7'
    ipConfigurations: [
      {
        name: 'privateEndpointIpConfig.ce598ebb-218e-4890-8aa8-2daaf42783da'
        id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/networkInterfaces/storageEndpoint-nic/ipConfigurations/privateEndpointIpConfig.ce598ebb-218e-4890-8aa8-2daaf42783da'
        etag: 'W/"ce56dd3f-14ce-45ba-964a-6b6625442220"'
        type: 'Microsoft.Network/networkInterfaces/ipConfigurations'
        properties: {
          provisioningState: 'Succeeded'
          privateIPAddress: '10.0.2.4'
          privateIPAllocationMethod: 'Dynamic'
          subnet: {
            id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/virtualNetworks/AppVnet/subnets/blobSub'
          }
          primary: true
          privateIPAddressVersion: 'IPv4'
          privateLinkConnectionProperties: {
            groupId: 'blob'
            requiredMemberName: 'blob'
            fqdns: [
              'multistorageacc.blob.core.windows.net'
            ]
          }
          applicationSecurityGroups: [
            {
              id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/applicationSecurityGroups/storageNSG'
            }
          ]
        }
      }
    ]
    dnsSettings: {
      dnsServers: []
      appliedDnsServers: []
      internalDomainNameSuffix: 'ztlra52jprauvghx0e4ofxfafc.fx.internal.cloudapp.net'
    }
    macAddress: ''
    enableAcceleratedNetworking: false
    vnetEncryptionSupported: false
    enableIPForwarding: false
    disableTcpStateTracking: false
    hostedWorkloads: []
    tapConfigurations: []
    privateEndpoint: {
      id: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/privateEndpoints/storageEndpoint'
    }
    nicType: 'Standard'
    allowPort25Out: false
    auxiliaryMode: 'None'
    auxiliarySku: 'None'
  }
  location: 'northeurope'
  managedBy: '/subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/privateEndpoints/storageEndpoint'
  kind: 'Regular'
}
@description('Generated from /subscriptions/049b8fe2-38c8-4859-8e37-50ca2d887b89/resourceGroups/team/providers/Microsoft.Network/privateDnsZones/privatelink.blob.core.windows.net')
resource privatelinkblobcorewindowsnet 'Microsoft.Network/privateDnsZones@2020-06-01' = {
  name: 'privatelink.blob.core.windows.net'
  etag: '7ec3d522-3ed4-41e6-8d3a-a1b0c6b22b90'
  location: 'global'
  tags: {}
  properties: {
    internalId: 'SW1tdXRhYmxlWm9uZUlkZW50aXR5OzZkNzRmMGZlLTYyM2MtNGQyYy1hZDI4LWE1MGExNGMwZWUxZDsw'
    maxNumberOfRecordSets: 25000
    maxNumberOfVirtualNetworkLinks: 1000
    maxNumberOfVirtualNetworkLinksWithRegistration: 100
    numberOfRecordSets: 2
    numberOfVirtualNetworkLinks: 1
    numberOfVirtualNetworkLinksWithRegistration: 0
    provisioningState: 'Succeeded'
  }
}
