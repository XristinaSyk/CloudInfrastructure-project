@description('The name of the new lab instance')
param labName string

@description('Location for all resources.')
param location string = resourceGroup().location

@description('The name of the vm to be created.')
param vmName string

@description('The size of the vm to be created.')
param vmSize string = 'Standard_B1ls'

@description('The username for the local account that will be created on the new vm.')
param userName string

@description('The password for the local account that will be created on the new vm.')
@secure()
param password string

var labSubnetName = '${labVirtualNetworkName}Subnet'
var labVirtualNetworkId = labVirtualNetwork.id
var labVirtualNetworkName = 'Dtl${labName}'

resource lab 'Microsoft.DevTestLab/labs@2018-09-15' = {
  name: labName
  location: location
}

resource labVirtualNetwork 'Microsoft.DevTestLab/labs/virtualnetworks@2018-09-15' = {
  parent: lab
  name: labVirtualNetworkName
}

resource labVirtualMachine 'Microsoft.DevTestLab/labs/virtualmachines@2018-09-15' = {
  parent: lab
  name: vmName
  location: location
  properties: {
    userName: userName
    password: password
    labVirtualNetworkId: labVirtualNetworkId
    labSubnetName: labSubnetName
    size: vmSize
    allowClaim: false
    galleryImageReference: {
      offer: 'ubuntu-24_04-lts'
      publisher: 'canonical'
      sku: 'server-gen1'
      osType: 'Linux'
      version: 'latest'
    }
  }
}

output labId string = lab.id

