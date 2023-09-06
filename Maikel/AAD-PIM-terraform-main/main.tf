provider "azurerm" {
    features {}
}

provider "azuread" {
}

# Create Dynamic Azure AD Group
resource "azuread_group" "subscription_owner_group_1" {
    display_name     = "jelmer_test123"
    mail_enabled     = false
    security_enabled = true
    owners = ["7bb02188-7e49-4153-92ac-4edab5344489"]
    lifecycle {
        ignore_changes = [
        owners,
        ]
    }
    # types            = ["DynamicMembership"]

#     dynamic_membership {
#       enabled = true
#       rule    = "user.surname -contains \"Jelmer\""
#   }
}

data "azurerm_role_definition" "role" {
    name = "owner"
}

# Random ID for deployment name
resource "random_uuid" "random" {
    # Refresh this random nummer when the following variables are changed
    keepers = {
    request_type    = var.request_type
    rotation_days   = "${formatdate("YYYY-MM-DD", time_rotating.eligible_schedule_request_start_date.id)}T${formatdate("HH:mm:ss.0000000+02:00", time_rotating.eligible_schedule_request_start_date.id)}"
  }
}

# Used to a) support short life time assignments automatically re-assigned and b) support a single start date that does not change
resource "time_rotating" "eligible_schedule_request_start_date" {
    rotation_days = var.rotation_days
}

# Deploy the eligible schedule request using ARM template
resource "azurerm_subscription_template_deployment" "eligible_schedule_request" {
    name             = random_uuid.random.id
    location         = var.location
    template_content = file("pim_assignment.json")

    parameters_content = jsonencode({
        "roleDefinitionId" = {
            value = data.azurerm_role_definition.role.id
        },
        "principalId" = {
            value = azuread_group.subscription_owner_group_1.id
        },
        "requestType" = {
            value = var.request_type
        },
        "name" = {
            value = random_uuid.random.id
        },
        "startDateTime" = {
            value = "${formatdate("YYYY-MM-DD", time_rotating.eligible_schedule_request_start_date.id)}T${formatdate("HH:mm:ss.0000000+02:00", time_rotating.eligible_schedule_request_start_date.id)}"
        }
    })
}