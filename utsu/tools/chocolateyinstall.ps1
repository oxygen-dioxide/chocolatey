$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$url        = 'https://github.com/titinko/utsu/releases/download/v0.4.4/Utsu-0.4.4.msi'
$packageArgs = @{
  packageName   = 'utsu'
  url           = $url
  fileType      = 'msi' #only one of these: exe, msi, msu
  softwareName  = 'Utsu*'
  checksum      = '36a3533c8a74cdff651feef74133bb7cc27dbf2c60225531bd0b4e49ecc06e68'
  checksumType  = 'sha256'
  silentArgs    = "/qr"
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs