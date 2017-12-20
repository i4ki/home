# operating-system's dependent variables

fn getos() {
	uname, status <= uname
	if $status != "0" {
		# probably not a unix box
	 	_, status <= systeminfo | findstr /B "/C:OS Name" 
		if $status == "0" {
			return "windows"
		}
	 	return "unknown"
	}
	if $uname == "Linux" {
		return "linux"
	}
	
	if $uname == "MSYS_NT-10.0" {
		return "windows"
	}
	
	return "unknown"
}

OS <= getos()

if $OS == "linux" {
	import "./os_unix.sh"
} else if $OS == "windows" {
	import "./os_windows.sh"
}

