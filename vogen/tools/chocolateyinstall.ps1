$packageName = 'vogen'
$url = 'https://github.com/aqtq314/Vogen.Client/releases/download/v0.1.1.4/Vogen.Client.v0.1.1.4.zip'
$checksum = '9d665aa19e1bfb05096300be999eba4c3c8d91e92960353ae57f369959704cc2'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
