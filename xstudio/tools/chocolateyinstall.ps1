$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName = 'xstudio'
$url = 'https://singingtool.blob.core.chinacloudapi.cn/singingtool-container/XStudioSinger_2021-04-02_1.5.0.zip'
$checksum = 'dd0ebe82c8acdf0173526fa22e0ceca511e606ac4a7fe186572893d1b143fdd6'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$File = Join-Path $toolsdir 'XStudioSinger_installer_1.5.0.exe'

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Get-ChocolateyUnzip $File $unzipLocation