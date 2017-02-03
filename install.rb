# Installation script

# exec'ls'
def installation ( packageManager )
  puts 'Do you want to install some basic programms? [y/n]'
  choise = STDIN.gets.chomp
  if choise == 'y' or choise == 'Y'
    basicPrograms = 'filezilla keepassx python-pip zsh gimp git imagemagick '
    basicPrograms += 'keybase mpv redshift terminator texlive-bin   texlive-core '
    basicPrograms += 'texlive-langgreek texstudio unrar vim'
    exec"sudo #{packageManager} #{basicPrograms}"
  end
end


if ARGV[0] == '-h'
  puts '  -h',
       '        Help page',
       '  -d',
       '        Distro name',
       '        Accepted distros: arch, debian'

elsif ARGV[0] == '-d' and ARGV[1] == 'debian'
  puts 'we are going to install pacjages for debian distro'
  installation('apt-get install')

elsif ARGV[0] == '-d' and ARGV[1] == 'arch'
  puts 'we are going to install pacjages for arch distro'
  installation('pacman -S')

elsif ARGV.empty?
  puts '  -h',
       '        Help page',
       '  -d',
       '        Distro name',
       '        Accepted distros: arch, debian'

else
  puts "install: invalid option -- '#{ARGV[0]}'","Try 'ruby install.rb -h' for more information."
end
