$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$url        = 'https://github.com/oxygen-dioxide/hitsuboku-kumi-chn-deepvocal/releases/download/v1.0.0/Hitsuboku-Kumi-Chinese-deepvocal-1.0.0.exe'
$packageArgs = @{
  packageName   = 'deepvocal-hitsuboku-kumi-chn'
  url           = $url
  #unzipLocation = $toolsdir
  fileType      = 'EXE' #only one of these: exe, msi, msu
  #file          = Join-Path $toolsdir 'Hitsuboku-Kumi-Chinese-deepvocal-1.0.0.exe'
  softwareName  = 'deepvocal-hitsuboku-kumi-chn*'
  checksum      = '8f49dc3f72cef3f9465abc06d02e727bc20a16c8602c5dbc9980d1686cc6829b'
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs