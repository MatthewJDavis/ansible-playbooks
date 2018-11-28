Describe "poshbot server" {
  Context "Modules" {
    $modules = Get-Module -ListAvailable
    It "Poshbot module should be installed" {
      $modules.Name -contains 'poshbot' | Should Be $true
    }
  }
}