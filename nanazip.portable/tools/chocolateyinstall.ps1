$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName = 'nanazip.portable'
$url = 'https://github.com/M2Team/NanaZip/releases/download/1.0-Preview3/40174MouriNaruto.NanaZip_1.0.46.0_gnj4mf6z9tkrc.msixbundle'
$checksum = '7d6c69d4ad93eda9c86a9fd59fa264e56dfdb1bf1e26226168f8d88e349554c5'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$File = Join-Path $toolsdir 'NanaZipPackage_1.0.46.0_x64.msix'

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Get-ChocolateyUnzip $File $unzipLocation