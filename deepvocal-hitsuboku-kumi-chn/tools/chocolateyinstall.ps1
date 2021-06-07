$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
 
$url        = 'https://github.com/oxygen-dioxide/hitsuboku-kumi-chn-deepvocal/releases/download/v1.1.0/Hitsuboku-Kumi-Chinese-deepvocal-1.1.0-dvtb2.exe'
$packageArgs = @{
  packageName   = 'deepvocal-hitsuboku-kumi-chn'
  url           = $url
  fileType      = 'EXE' #only one of these: exe, msi, msu
  softwareName  = 'deepvocal-hitsuboku-kumi-chn*'
  checksum      = '8ba38371d552717dc1c90115495ae57a1d54dbc04a4197068db6a0bf0d1fdcff'
  checksumType  = 'sha256'
  silentArgs    = "/VERYSILENT /SUPPRESSMSGBOXES /NORESTART /SP-"
  validExitCodes= @(0, 3010, 1641)
}

Install-ChocolateyPackage @packageArgs