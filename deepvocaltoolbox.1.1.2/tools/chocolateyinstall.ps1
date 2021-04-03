$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
  
$url        = 'https://dl.deep-vocal.com/toolbox/Setup_DeepVocalToolBox_beta_1.1.2.zip'
  
$packageArgs = @{
  packageName   = 'deepvocaltoolbox'
  url           = $url
  unzipLocation = $toolsdir
  fileType      = 'EXE'
  file          = Join-Path $toolsdir 'Setup_DeepVocalToolBox_beta_1.1.2.exe'
  softwareName  = 'deepvocaltoolbox*'
  checksum      = 'DD1986548E674FB5C280B23EEB7800A3B225D8134E787CF453CDE7C7E2F29773'
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}
  
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyInstallPackage @packageArgs