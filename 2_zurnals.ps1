$errors = get-eventlog system -entrytype error -after (get-date).adddays(-7)
$file = "$env:userprofile\documents\errors.txt"
if ($errors.count -gt 10) {
	"KRITISKI" | out-file $file
} else {
	"OK" | out-file $file
}
$errors | out-file $file -append
