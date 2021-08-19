$packageName = 'listen1.portable'
$url = 'https://github.com/listen1/listen1_desktop/releases/download/v2.21.6/listen1_2.21.6_win_x64.7z'
$checksum = 'a583df83ed8412be5fbd967a48c69b68613726e372bae06fe31316978512bb24'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
