$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName = 'xstudio'
$url = 'https://singingtool.blob.core.chinacloudapi.cn/singingtool-container/XStudioSinger_2021-08-02_1.8.1.zip'
$checksum = 'a4bdd203612b74ebb12e2c2f6dccd91635a82e7082da4e21cfbad3d22f23ad17'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$File = Join-Path $toolsdir 'XStudioSinger_installer_1.8.1.exe'

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Get-ChocolateyUnzip $File $unzipLocation