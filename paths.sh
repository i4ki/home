# setup paths accordingly to OS

if $OS == "windows" {
	import "./paths_windows.sh"
} else {
	import "./paths_unix.sh"
}