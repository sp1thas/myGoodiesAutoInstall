#/usr/bin/sh

echo '''                         ______                ___          
        ____ ___  __  __/ ____/___  ____  ____/ (_)__  _____
       / __ `__ \/ / / / / __/ __ \/ __ \/ __  / / _ \/ ___/
      / / / / / / /_/ / /_/ / /_/ / /_/ / /_/ / /  __(__  ) 
     /_/ /_/ /_/\__, /\____/\____/\____/\__,_/_/\___/____/  
    ___        /____/     ____           __        ____     
   /   | __  __/ /_____  /  _/___  _____/ /_____ _/ / /     
  / /| |/ / / / __/ __ \ / // __ \/ ___/ __/ __ `/ / /      
 / ___ / /_/ / /_/ /_/ // // / / (__  ) /_/ /_/ / / /       
/_/  |_\__,_/\__/\____/___/_/ /_/____/\__/\__,_/_/_/        
                                                            
 author: Simakis Panagiotis | sp1thas@autistici.org
 url: https://git.io/vDaax
 -----------------------------------------------------------

'''
git clone git@github.com:sp1thas/myGoodiesAutoInstall.git
cd myGoodiesAutoInstall
while true; do
    read -p "Using Debian or Arch?[D=Debian|A=Arch]: " opt
    case $opt in
        [Dd]* ) ruby install.rb -d debian; exit;;
        [Aa]* ) ruby install.rb -d arch; exit;;
        * ) echo "Wrong option";;
    esac
done
