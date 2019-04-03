$script = <<-SCRIPT
Set-Location -Path C:\\tmp
powershell C:\\tmp\\DSCMetaConfigs.ps1
SCRIPT
Vagrant.configure("2") do |c|
  c.winrm.username = 'vagrant\vagrant'
  c.vm.provision "file", source: "C:\\Users\\Matt\\Desktop\\DSCMetaConfigs.ps1", destination: "C:\\tmp\\DSCMetaConfigs.ps1"
  c.vm.provision "shell",
    inline: $script
  c.vm.provision "shell",
    inline: "Set-Dsclocalconfigurationmanager -Path C:\\tmp\\DSCMetaConfigs", privileged: true
end