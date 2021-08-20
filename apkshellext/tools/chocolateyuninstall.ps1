$unzipLocation = $(Split-Path -parent $MyInvocation.MyCommand.Definition)
cd $unzipLocation
echo "`n" | .\uninstall.bat