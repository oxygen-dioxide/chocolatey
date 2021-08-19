$packageName = 'openutau'
$url = 'https://github.com/stakira/OpenUtau/releases/download/OpenUtau-Latest/OpenUtau.zip'
$checksum = 'e9539bc8aac2e544745189f32be35fdf33dcf6a31930fe42f17cf289c51f43b6'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
