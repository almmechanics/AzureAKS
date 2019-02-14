param(
    [string]
    $Prefix,
    [string]
    $Id
)

write-host ("##vso[task.setvariable variable=ActionGroup]{0}" -f ("{0}-ag-email-{1:000}" -f $Prefix, $Id))