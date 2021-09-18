$packageName = 'majsoul-plus'
$url = 'https://github.com/MajsoulPlus/majsoul-plus/releases/download/v2.0.0/Majsoul_Plus-2.0.0-win32-ia32.zip'
$checksum = '0C049A6723E1D80F74C44DFC921A0D05269F0286F8611C3D4ED9E89C5FFB2AC7'
$checksumType = 'sha256'
$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)

Install-ChocolateyZipPackage $packageName $url $unzipLocation -checksum $checksum -checksumType $checksumType -checksumType64 $checksumType
