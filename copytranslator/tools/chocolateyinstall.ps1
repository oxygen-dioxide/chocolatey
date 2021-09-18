$packageName = 'copytranslator'
$url = 'https://github.com/CopyTranslator/CopyTranslator/releases/download/v9.1.0/copytranslator-9.1.0-win.zip'
$checksum = 'F635D340983009EC3F304279AA59E51A0F4401028B46AC08BB68D2045DC179EA'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
