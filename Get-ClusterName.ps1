param(
    [string]
    $Prefix,
    [string]
    $Id
)

write-host ("##vso[task.setvariable variable=ClusterName]{0}" -f ("{0}aks{1:000}" -f $Prefix, $Id))