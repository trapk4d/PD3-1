$top = get-process | where-object {$_.processName -ne "svchost"} | sort-object workingset -descending |select-object -first 5
$total = ($top | measure-object workingset -sum).sum / 1mb
write-output "$top Top 5 procesu total RAM: $total MB"