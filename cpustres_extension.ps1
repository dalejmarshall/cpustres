# download cpustres.zip
New-Item -Path "c:\" -Name "bootcamp" -ItemType "directory"
Invoke-WebRequest -Uri http://download.sysinternals.com/files/CPUSTRES.zip -OutFile "C:\bootcamp\cpustres.zip"


#unzip cpustres.zip
Add-Type -AssemblyName System.IO.Compression.FileSystem
function Unzip
{
    param([string]$zipfile, [string]$outpath)

    [System.IO.Compression.ZipFile]::ExtractToDirectory($zipfile, $outpath)
}

Unzip "C:\bootcamp\cpustres.zip" "C:\bootcamp"

#Start cpustres.exe
