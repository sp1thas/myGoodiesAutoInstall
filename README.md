# Auto Install My Goodies
a simple ruby script which automatically installs some programs. This script is usefull after a clean format because it can saves some time. Try it!

## Install... to install

### Auto Build and Run

`wget https://raw.githubusercontent.com/sp1thas/myGoodiesAutoInstall/master/run.sh ; sh run.sh`

### Manual Installation
1. `git clone https://github.com/sp1thas/myGoodiesAutoInstall.git && cd myGoodiesAutoInstall`
2. For Arch: `ruby install.rb -d arch`

	For Debian: `ruby install.rb -d debian`
3. Follow the instructions
4. Done

## Usage
`ruby install.rb -d <distro name>`
```bash
  -h
        Help page
  -d
        Distro name
        Accepted distros: arch, debian
```
### Examples
For Debian based just run:

`ruby install.rb -d debian`

For Arch based run:

`ruby install.rb -d arch`

### Demo
[![asciicast](https://asciinema.org/a/15sgx0vb21bxi75teefl6itho.png)](https://asciinema.org/a/15sgx0vb21bxi75teefl6itho)

### Contributing
Fork this repo and add your favorite programms!

### Author
Simakis Panagitis

### Licence
This project is licensed under the GNU General Public License version 3 - see the [LICENSE](LICENCE) file for details
