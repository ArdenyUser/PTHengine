$Gfile = Read-Host "GPACKER's Unpacker, please enter a filename, no extension: "
$UnpackLocation = Read-Host "Directory to unpack in: "
$Gfile = $Gfile + ".gpacker"
$file_data_listdownloader = Get-Content $Gfile
cd $UnpackLocation
wget $file_data_listdownloader[0]
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


