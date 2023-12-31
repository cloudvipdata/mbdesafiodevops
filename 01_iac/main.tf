terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 2.65"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }
  }
}

provider "azurerm" {
  features {}

  subscription_id = "708a34d4-d5f8-4550-a158-8434704ebde3"
  tenant_id       = "80fbce9b-7867-4bf4-8e92-fe6adb722356"
}

resource "azurerm_resource_group" "mibancoaz100-rg" {
  name     = "mibancoaz100-rg"
  location = "East US"
}

resource "azurerm_container_registry" "mibancoaz100-acr" {
  name                = "mibancoaz1001acr"
  resource_group_name = azurerm_resource_group.mibancoaz100-rg.name
  location            = azurerm_resource_group.mibancoaz100-rg.location
  sku                 = "Premium"
}

resource "azurerm_kubernetes_cluster" "mibancoaz100-aks-cluster" {
  name                = "mibancoaz100-aks"
  location            = azurerm_resource_group.mibancoaz100-rg.location
  resource_group_name = azurerm_resource_group.mibancoaz100-rg.name
  dns_prefix          = "mibancoaz100-dns"

  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}

resource "azurerm_role_assignment" "habilitadopulling" {
  principal_id                     = azurerm_kubernetes_cluster.mibancoaz100-aks-cluster.kubelet_identity[0].object_id
  role_definition_name             = "AcrPull"
  scope                            = azurerm_container_registry.mibancoaz100-acr.id
  skip_service_principal_aad_check = true
}
