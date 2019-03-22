$fname = Read-Host 'Enter filename'
$object = Get-Childitem -Include "$fname.*" -Recurse -ErrorAction SilentlyContinue
notepad $object