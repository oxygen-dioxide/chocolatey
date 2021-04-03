$ErrorActionPreference = 'Stop';

$WindowsVersion=[Environment]::OSVersion.Version
if ($WindowsVersion.Major -ne "10") {
  throw "This package requires Windows 10."
}

$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$msixPath = ($toolsDir + "\" + "PWABuilder.sideload.msix")
#Start-Process -FilePath "$toolsDir\pwainstaller.exe" -ArgumentList `"$msixPath`" -NoNewWindow -PassThru
Get-ChecksumValid  -File "$msixPath" -Checksum "9d15169bf593328b8d40c268e37d6dab4ce57be7b23f2b1653ecbb85a424ac7f" -ChecksumType "sha256"
Get-ChecksumValid  -File "$toolsDir\pwainstaller.exe" -Checksum "14ae6b7becc11a2aed6525056f170e37d7e6aeac16ef1f3e2851ce48435a4ac2" -ChecksumType "sha256"

Start-ChocolateyProcessAsAdmin -Statements "$msixPath" -ExeToRun "$toolsDir\pwainstaller.exe"