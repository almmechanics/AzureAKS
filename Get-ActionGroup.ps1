param(
    [string]
    $Prefix,
    [string]
    $Id
)

$actionGroupName = ("{0}-ag-email-{1:000}" -f $Prefix, [int]$Id)
$agResourceId = (Get-AzureRmResource -ResourceType  'Microsoft.Insights/actiongroups' -name "$actionGroupName" ).ResourceId
write-host ("##vso[task.setvariable variable=ActionGroup]{0}" -f $agResourceId)