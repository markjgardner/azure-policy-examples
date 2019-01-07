function Deploy-Policy {
param(
  [Parameter(Mandatory=$true)]
  $name,
  [Parameter(Mandatory=$true)]
  $filePath,
  [Parameter(Mandatory=$true)]
  $scope,
  [Parameter(Mandatory=$true)]
  $location,
  [Parameter(Mandatory=$false)]
  $description = ''
)

# Create the policy definition
$definition = New-AzureRmPolicyDefinition `
  -Name $name `
  -Description $description `
  -Policy $filePath

# Create the assignment using the -Location and -AssignIdentity properties
New-AzureRmPolicyAssignment `
  -Name $name `
  -DisplayName "$name - assignment" `
  -Scope $scope `
  -PolicyDefinition $definition `
  -Location $location `
  -AssignIdentity
}