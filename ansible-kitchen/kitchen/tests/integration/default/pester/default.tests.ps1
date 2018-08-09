Describe "British Settings" {
  Context "Timezone" {
    It 'Should be GMT Standard Time for the time zone' {
      $timeZone = Get-TimeZone 
      $timeZone.StandardName | should be "GMT Standard Time"
    }
  }
  Context "Region Settings" {
    $locale = Get-WinSystemLocale
    It 'should have the en-GB locale Name' {
      $locale.Name | should be "en-GB"
    }
    It 'should have the LCID of 2057' {
      $locale.LCID | should be '2057'
    }
  }
}
