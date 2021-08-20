$packageName = 'apkshellext'
$url = 'https://github.com/kkguo/apkshellext/releases/download/v2.0.7/ApkShellext2.7z'
$checksum = '17529937da2e89d19940e3273c2d166cc3a586020d9797facf3e9beac1f8b33a'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
cd $unzipLocation
echo "`n" | .\install.bat