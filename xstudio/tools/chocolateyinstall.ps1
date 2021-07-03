$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName = 'xstudio'
$url = 'https://singingtool.blob.core.chinacloudapi.cn/singingtool-container/XStudioSinger_2021-07-02_1.7.2.zip'
$checksum = '7426313cd63f2c1d128ccd565096343fe249526b81e2122bf1ac8f6fc582fad0'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$File = Join-Path $toolsdir 'XStudioSinger_installer_1.7.2.exe'

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Get-ChocolateyUnzip $File $unzipLocation