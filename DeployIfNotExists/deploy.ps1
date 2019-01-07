../Deploy-Policy.ps1 `
  -name "test policy" `
  -filePath get-item ".\default-diag-log-settings.json" `
  -scope "/subscriptions/$subscriptionId/resourceGroups/$rgName" `
  -location "eastus" `
  -description "Ensures diagnostic logs are enabled for app services"