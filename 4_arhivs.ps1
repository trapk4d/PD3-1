$date = get-date -format "yyyy-MM-dd"
$source = "$env:userprofile\documents\errors.txt"
$zip = "$env:userprofile\documents\atskaite_$date.zip"
compress-archive -path $source -destinationpath $zip -force
$size = (get-item $zip).length / 1kb
write-output "Arhiva izmers: $([math]::round($size,2)) KB"