# setup windows paths

fn append_ifnot(lst, value) {
    hasval = "0"
    for l in $lst {
        if $l == $value {
            hasval = "1"
        }
    }

    if $hasval == "0" {
        lst <= append($lst, $value)
    }
    return $lst
}

paths <= split($Path, ";")

requiredPaths = (
    "C:\\msys64\\usr\\bin"
    "C:\\Go\\bin"
    "C:\\Users\\Tiago\\bin"
    "D:\\Program Files\\emacs\\bin"
    "D:\\Program Files\\Racket"
    "D:\\Program Files\\qemu"
    "D:\\Program Files\\sox-14-4-2"
)

for p in $requiredPaths {
    paths <= append_ifnot($paths, $p)
}

setenv Path <= join($paths, ";")

print("Path:\n")
for p in $paths {
    print("%s\n", $p)
}
