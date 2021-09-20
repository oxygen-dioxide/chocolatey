
$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName = 'kingdraw'
$url = 'http://windows.download.kingdraw.cn/KingDrawPc_V2.1.0.00-zh-cn.exe'
$checksum = 'E0769355C94CAAB5EBA7A4E6A58901CC8B247DD7A27F46470B2E09DF935EEB36'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$File = Join-Path $toolsdir 'app.7z'

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Get-ChocolateyUnzip $File $unzipLocation