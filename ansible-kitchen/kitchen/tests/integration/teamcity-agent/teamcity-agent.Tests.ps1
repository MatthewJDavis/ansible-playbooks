Describe 'Teamcity build agent' {
    context 'Chocolatey package installs' {
        $packages = 'git', 'TeamCItyAgent'
        $chocoInstalled = choco list -lo

        $packages | ForEach-Object {
            it "$($_) is installed via choco" {
                ($chocoInstalled | Select-String -SimpleMatch $_).count -gt 0 | Should be $true
            }
        }
    }

    context 'Agent upgraded' {
        it 'Agent has finished upgrading' {
            'C:\buildAgent\logs\upgrade.log' | Should -FileContentMatch 'Finish upgrade'
        }
    }
    
    context 'certificate checks' {
        
    } 
}