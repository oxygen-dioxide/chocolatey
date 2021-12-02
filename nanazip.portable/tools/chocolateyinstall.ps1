$ErrorActionPreference = 'Stop'; # stop on all errors
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageName = 'nanazip.portable'
$url = 'https://github.com/M2Team/NanaZip/releases/download/1.0-Preview4/40174MouriNaruto.NanaZipPreview_1.0.88.0_gnj4mf6z9tkrc.msixbundle'
$checksum = '0064DB91F6B8AC68C7214C48171E639A4298132A1DFFFBA3ACBE338CD6D7FAE7'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
$File = Join-Path $toolsdir 'NanaZipPackage_1.0.46.0_x64.msix'

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
Get-ChocolateyUnzip $File $unzipLocation