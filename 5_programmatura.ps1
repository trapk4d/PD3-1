$updates = winget upgrade
$apps = $updates | where-object {$_ -match '^\S'}
$tik = $apps.count - 3
write-output "Sistema ir $tik programmas, kuras vajag atjauninat."
$apps