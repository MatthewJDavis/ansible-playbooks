Describe "poshbot server" {
  Context "Modules" {
    $modules = Get-Module -ListAvailable
    It "Poshbot module should be installed" {
      $modules.Name -contains 'poshbot' | Should Be $true
    }
  }
  Context "Directories" {
    $rootDir = 'C:\poshbot'
    It "Should have a $rootDir directory" {
      Test-Path -Path $rootDir | Should Be $true
    }
    It "Should have the log directory $rootDir\logs" {
      Test-Path -Path (Join-Path $rootDir logs) | Should Be $true
    }
    It "Should have the plugin directory $rootDir\plugins" {
      Test-Path -Path (Join-Path -Path $rootDir plugins) | Should Be $true
    }
  }
}