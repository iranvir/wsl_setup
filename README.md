## The script has some hardcoded specifics
1. It is for Windows user `r` 
2. It can be run from said user's Desktop Folder
3. `.wslconfig` to use all of my PC's CPU cores and RAM.


## Powershell commands
To create a new Distro, named `Ubuntu`
`wsl --import Ubuntu $HOME\Desktop\Ubuntu Ubuntu.tar.gz`

To run the `setup.sh` script.

`wsl -d Ubuntu exec env PWD='/mnt/c/Users/r/Desktop/WSL' ./setup.sh`
