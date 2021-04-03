$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$url        = 'https://dl.deep-vocal.com/editor/Setup_DeepVocal_beta_2.1.0.zip'
$packageArgs = @{
  packageName   = 'deepvocal'
  url           = $url
  unzipLocation = $toolsdir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  file          = Join-Path $toolsdir 'Setup_DeepVocal_beta_2.1.0.exe'
  softwareName  = 'deepvocal*'
  checksum      = 'efc0c216603ffcb939416d24702281d1e3564584bddc4bc67d102bbd76d5ddd1'
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}
 
Install-ChocolateyZipPackage @packageArgs
Install-ChocolateyInstallPackage @packageArgs