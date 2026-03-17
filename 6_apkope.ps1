$disk = Get-PSDrive C

$freePercent = ($disk.Free / ($disk.Used + $disk.Free)) * 100

$log = "$env:USERPROFILE\Documents\Apkope.log"
$date = Get-Date

if ($freePercent -lt 25) {

    $before = $disk.Free

    Remove-Item "$env:TEMP\*" -Recurse -Force -ErrorAction SilentlyContinue
    Clear-RecycleBin -Force -ErrorAction SilentlyContinue

    $disk = Get-PSDrive C
    $after = $disk.Free

    $freed = ($after - $before) / 1GB
    $freed = [math]::Round($freed,2)

    "[$date] Tirisana veikta. Atbrivoti $freed GB." | Out-File $log -Append

} else {

    "[$date] Vieta pietiekama." | Out-File $log -Append

}