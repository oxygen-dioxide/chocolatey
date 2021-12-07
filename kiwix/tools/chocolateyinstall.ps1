$packageName = 'kiwix'
$url = 'https://mirrors.dotsrc.org/kiwix/release/kiwix-desktop/kiwix-desktop_windows_x64_2.0.5.zip'
$checksum = '33a378e202819419fd6c38cb2bbdd5c812ef421f9cf4d922ac008cac330a3e2a'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
