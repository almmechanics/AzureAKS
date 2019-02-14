param(
    [string]
    $Prefix,
    [string]
    $Id
)

$OMSName = ("{0}-oms-{1:000}" -f $Prefix, $Id)
$OMS = @(Get-AzureRmOperationalInsightsWorkspace) | select-object -first 1

write-host ("##vso[task.setvariable variable=Env.OmsWorkspaceId]{0}" -f ($OMS.ResourceId))