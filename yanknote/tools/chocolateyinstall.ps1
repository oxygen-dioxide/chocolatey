$packageName = 'yanknote'
$url = 'https://github.com/purocean/yn/releases/download/v3.6.7/Yank-Note-win-x64-3.6.7.zip'
$checksum = '36C9873816952B0AF0ACF660741E734AD6D3486510C7B252912B7EDE66C03978'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
