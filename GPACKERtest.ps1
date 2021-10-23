Install-Module ps2exe
$Gfile = Read-Host "GPACKER's Unpacker, please enter a filename, no extension: "
$UnpackLocation = Read-Host "Directory to unpack in: "
$Gfile = $Gfile + ".gpacker"
# PREPERATION
"$file_data_listdownloader = Get-Content " + $Gfile | Out-File -FilePath C:\gpacker.ps1
"cd " + $UnpackLocation | Out-File -FilePath C:\gpacker.ps1 -Append
$file_data_listdownloader = Get-Content "gpackerlist"
"wget " + $file_data_listdownloader[0] | Out-File -FilePath C:\gpacker.ps1 -Append
"$file_data_listdownloader = Get-Content 'gackerlist'" | Out-File -FilePath C:\gpacker.ps1 -Append
# PREPERATION
$file_data_listdownloader = Get-Content "gpackerlist"
$lineno = 0
DO
{
if ($line -eq 'EXIT') {
echo "End of list..."
}
else {
$dload = $file_data_listdownloader[$lineno]
}
$lineno = $lineno + 1
wget $dload
} Until ($line -eq 'EXIT')


