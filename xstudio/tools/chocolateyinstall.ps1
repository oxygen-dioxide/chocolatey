$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$url        = 'https://singingtool.blob.core.chinacloudapi.cn/singingtool-container/XStudioSinger_2021-04-02_1.5.0.zip'
$packageArgs = @{
  packageName   = 'xstudio'
  url           = $url
  unzipLocation = $toolsdir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  file          = Join-Path $toolsdir 'XStudioSinger_installer_1.5.0.exe'
 # softwareName  = 'deepvocal*'
  checksum      = 'dd0ebe82c8acdf0173526fa22e0ceca511e606ac4a7fe186572893d1b143fdd6'
  checksumType  = 'sha256'
  silentArgs    = "/S"
  validExitCodes= @(0)
}
 
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyInstallPackage @packageArgs