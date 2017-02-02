# Installation script

# exec'ls'
def installation ( packageManager )
  puts 'Do you want to install some basic programms? [y/n]'
  choise = STDIN.gets.chomp
  if choise == 'y' or choise == 'Y'
    basicPrograms = 'filezila keepassx'
    exec"sudo #{packageManager} #{basicPrograms}"
  end
end


if ARGV[0] == '-h'
  puts 'this goes the help page'
elsif ARGV[0] == '-d' and ARGV[1] == 'debian'
  puts 'we are going to install pacjages for debian distro'
  installation('apt-get install')
elsif ARGV[0] == '-d' and ARGV[1] == 'arch'
  puts 'we are going to install pacjages for arch distro'
  installation('pacman -S')
elsif ARGV.empty?
  puts 'help page also goes here'
else
  puts "install: invalid option -- '#{ARGV[0]}'","Try 'ruby install.rb -h' for more information."
end
