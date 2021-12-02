$packageName = 'majsoul-plus'
$url = 'https://github.com/MajsoulPlus/majsoul-plus/releases/download/v2.0.0/Majsoul_Plus-2.0.0-win32-ia32.zip'
$checksum = 'A99456FA11E33E2FFC8A4F642CC8F436F23AFFCF44E802711B69FCCD4FB348DF'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
