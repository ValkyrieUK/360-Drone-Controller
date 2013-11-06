set -e
red='\x1B[0;31m'
NC='\x1B[0m' # No Color
echo "${red}
 #     #                                            
 #     #   ##   #      #    # #   # #####  # ###### 
 #     #  #  #  #      #   #   # #  #    # # #      
 #     # #    # #      ####     #   #    # # #####  
  #   #  ###### #      #  #     #   #####  # #      
   # #   #    # #      #   #    #   #   #  # #      
    #    #    # ###### #    #   #   #    # # ###### 
${NC}
"
read -p "Press enter to start the server and 360 controller access......"
echo "Okay....."
sleep 1
echo "Here we go with the node server......"
sleep 1
echo "If the server loops and isnt able to 'TcpVideoStream' make sure you are connected to the drone via WiFi"
sleep 5
clear
node assets/server/server.js
sleep 2
echo "Luanching controller support"
sleep 1
echo "if your controller is plugged in and not being recognised it looks like you didnt check the wiki... you need the drivers !! - https://github.com/ValkyrieUK/360-Drone-Controller "
sleep 1
coffee assets/controller/drone-xbox.coffee
