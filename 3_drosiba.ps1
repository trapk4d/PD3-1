$status = get-mpcomputerstatus
if (-not $status.realtimeprotectionenabled -or $statusquickscanage -gt 3) {
	write-host "Sistema ir apdraudeta!"
} else {
	write-host "Sistema ir drosa"
}
