Set-Location c:\git

Import-Module Activedirectory


function GetADUserPermissions {
    param ([string]$identity)
    Get-ADPrincipalGroupMembership $identity | Select-Object Name
}


Set-Alias ad GetADUserPermissions