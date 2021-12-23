# Random String Resource
# Ideal for creating storage account
resource "random_string" "myrandom" {
  length = 6
  upper = false 
  special = false
  number = false   
}

# Above will add random 6 character end of Resource Group name
# Example: HR-Dev-myrg-bwnugb
