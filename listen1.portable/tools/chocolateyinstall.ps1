$packageName = 'listen1.portable'
$url = 'https://github.com/listen1/listen1_desktop/releases/download/v2.19.0/listen1_2.19.0_win_x64.7z'
$checksum = '4e09f744f0fd0443a1eac443cbbbc3350bf7813af5f50374c3776fb14fbfb668'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
