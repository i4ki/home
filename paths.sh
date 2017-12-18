# setup paths accordingly to OS

_, status <= pwd | grep -E "([A-Z]+):\\\\\\\\"
if $status == "0" {
	import "./paths_windows.sh"
} else {
	import "./paths_unix.sh"
}