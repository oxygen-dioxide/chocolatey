$packageName = 'yanknote'
$url = 'https://github.com/purocean/yn/releases/download/v3.6.4/Yank-Note-win-x64-3.6.4.zip'
$checksum = 'B1EC425FA5CA010EF5642BFF8E7D7228D0F33547D89B1913F82AECB96CE0F8CD'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
