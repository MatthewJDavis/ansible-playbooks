Import-Module PoshBot -force
$pbc = Get-PoshBotConfiguration -Path C:\poshbot\config.psd1

while($True) {
    try {
        $err = $null
        Start-PoshBot -Configuration $pbc -Verbose -ErrorVariable err
        if($err) {
            throw $err
        }
    }
    catch {
        $_ | Format-List -Force | Out-String | Out-File (Join-Path $pbc.LogDirectory Service.Error)
    }
}