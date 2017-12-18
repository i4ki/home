# operating-system's dependent variables

OS = ""
uname <= uname
if $uname == "Linux" {
	OS = "linux"
} else if $uname == "MSYS_NT-10.0" {
	OS = "windows"
} else {
	echo "Operating System not supported: " $uname
	exit(1)
}

if $OS == "linux" {
	import "./os_unix.sh"
} else if $OS == "windows" {
	import "./os_windows.sh"
}
