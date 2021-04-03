$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  
$url        = 'https://dl.deep-vocal.com/toolbox/Setup_DeepVocalToolBox_beta_1.1.6.zip'
  
$packageArgs = @{
  packageName   = 'deepvocaltoolbox'
  url           = $url
  unzipLocation = $toolsdir
  fileType      = 'EXE'
  file          = Join-Path $toolsdir 'Setup_DeepVocalToolBox_beta_1.1.6.exe'
  softwareName  = 'deepvocaltoolbox*'
  checksum      = '6DAEA23E7DE7EAA82A2FDDF551CCE5CC4BE6CCF0D114836F2D42621F752BDFC4'
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}
  
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyInstallPackage @packageArgs