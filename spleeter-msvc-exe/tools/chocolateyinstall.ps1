$packageName = 'SpleeterMsvcExe'
$url = 'https://github.com/wudicgi/SpleeterMsvcExe/releases/download/v1.0/SpleeterMsvcExe-v1.0.zip'
$checksum = '9151D1DCB1B7E61626E6228E98FBE733EA187B475715D1C68F4A84CABC063396'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
