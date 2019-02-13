#!/bin/bash

################### Setup your default config here ###################

# API KEY for Steam
authkey=""

####### Murder Config ################################################

slotsMurder="16"
mapMurder="md_clue"
collectionMurder="618218288"

####### Slashers Config ##############################################

slotsSlashers="10"
mapSlashers="slash_lodge"
collectionSlashers="1138069552"

####### ExtremeFootballThrowdown Config ##############################

slotsEFT="16"
mapEFT="eft_bloodbowl_v3"
collectionEFT="1138452927"

####### GuessWho Config ##############################################

slotsGW="16"
mapGW="cs_meridian"
collectionGW="479737012"

####### Sandbox Config ###############################################

slotsSandbox="16"
mapSandbox="gm_flatgrass"
collectionSandbox=""

####### TerrorTown Config #############################################

slotsTTT="16"
mapTTT="ttt_community_bowling"
collectionTTT="1651595514"

######################################################################

clear

## Check if we are in a screen session
if [ $(echo $STY | grep -c "serveur") -eq 1 ]
then
	printf "${RED}You can't launch GMOD LAUNCHER directly in a screen session${NC}\n"
else
	RED='\033[0;31m'
	GREEN='\033[0;42m'
	NC='\033[0m'
	gamemode='null'
	collchoice="null"

	while [ $(ls $HOME/steamcmd/gmod/garrysmod/gamemodes | grep -c "^$gamemode\$") -eq 0 ]
	do
		## Script presentation
		echo '================================================================================'
		echo '         ___ __  __  ___  ___    _      _  _   _ _  _  ___ _  _ ___ ___ '
		echo '        / __|  \/  |/ _ \|   \  | |    /_\| | | | \| |/ __| || | __| _ \'
 		echo '       | (_ | |\/| | (_) | |) | | |__ / _ \ |_| | .` | (__| __ | _||   /'
  		echo '        \___|_|  |_|\___/|___/  |____/_/ \_\___/|_|\_|\___|_||_|___|_|_\'                                                           
		echo '================================================================================'
		echo ''
		echo ''
		echo 'Installed Gamemodes : '
		echo ''
		ls $HOME/steamcmd/gmod/garrysmod/gamemodes
		echo ''
		echo ''
		printf "Gamemode choice [default : murder]:	"
		read -r gamemode

		if [ "$gamemode" == "" ]
		then
			gamemode="murder"
		fi
		
		if [ $(ls $HOME/steamcmd/gmod/garrysmod/gamemodes | grep -c "^$gamemode\$") -eq 0 ]
		then
			printf "${RED}This gamemode doesn't exist${NC}\n"
			echo ''
			read -p "Press any key to continue"
			clear
		fi
	done

	echo ''
	echo ''
	
	case $gamemode in
        "murder")
                printf "Number of maximum slots [default : $slotsMurder]:	"
                read -r slots

				if [ "$slots" == "" ]
				then
					slots=$slotsMurder
				fi

                echo ''
				echo ''

				printf "Starting map [default : $mapMurder]:	"
                read -r map

				if [ "$map" == "" ]
				then
					map=$mapMurder
				fi

                echo ''
				echo ''

				while [ "$collchoice" = "null" ]
				do
					printf "Do you want to use a STEAM Collection (y/n) [default : y]:	"
					read -r collchoice
					if [ "$collchoice" == "y" ] || [ "$collchoice" == "" ]
					then
						echo ''
						printf "ID of STEAM Collection [default : $collectionMurder]:	"
                		read -r collection
               		elif [ "$collchoice" == "n" ]
					then
						collection="none"
					else
						collchoice="null"
						printf "${RED}Your choice isn't right${NC}\n"
						echo ''
						read -p "Press any key to continue"
						echo ''
					fi
				done

				if [ "$collection" == "" ]
				then
					collection=$collectionMurder
				fi
                ;;
        "slashers")
                printf "Number of maximum slots [default : $slotsSlashers]:	"
                read -r slots

				if [ "$slots" == "" ]
				then
					slots=$slotsSlashers
				fi

                echo ''
				echo ''

				printf "Starting map [default : $mapSlashers]:	"
                read -r map

				if [ "$map" == "" ]
				then
					map=$mapSlashers
				fi

                echo ''
				echo ''

				while [ "$collchoice" = "null" ]
				do
					printf "Do you want to use a STEAM Collection (y/n) [default : y]:	"
					read -r collchoice
					if [ "$collchoice" == "y" ] || [ "$collchoice" == "" ]
					then
						echo ''
						printf "ID of STEAM Collection [default : $collectionSlashers]:	"
                		read -r collection
               		elif [ "$collchoice" == "n" ]
					then
						collection="none"
					else
						collchoice="null"
						printf "${RED}Your choice isn't right${NC}\n"
						echo ''
						read -p "Press any key to continue"
						echo ''
					fi
				done

				if [ "$collection" == "" ]
				then
					collection=$collectionSlashers
				fi
                ;;
        "extremefootballthrowdown")
                printf "Number of maximum slots [default : $slotsEFT]:	"
                read -r slots

				if [ "$slots" == "" ]
				then
					slots=$slotsEFT
				fi

                echo ''
				echo ''

				printf "Starting map [default : $mapEFT]:	"
                read -r map

				if [ "$map" == "" ]
				then
					map=$mapEFT
				fi

                echo ''
				echo ''

				while [ "$collchoice" = "null" ]
				do
					printf "Do you want to use a STEAM Collection (y/n) [default : y]:	"
					read -r collchoice
					if [ "$collchoice" == "y" ] || [ "$collchoice" == "" ]
					then
						echo ''
						printf "ID of STEAM Collection [default : $collectionEFT]:	"
                		read -r collection
               		elif [ "$collchoice" == "n" ]
					then
						collection="none"
					else
						collchoice="null"
						printf "${RED}Your choice isn't right${NC}\n"
						echo ''
						read -p "Press any key to continue"
						echo ''
					fi
				done

				if [ "$collection" == "" ]
				then
					collection=$collectionEFT
				fi
                ;;
        "guesswho")
                printf "Number of maximum slots [default : $slotsGW]:	"
                read -r slots

				if [ "$slots" == "" ]
				then
					slots=$slotsGW
				fi

                echo ''
				echo ''

				printf "Starting map [default : $mapGW]:	"
                read -r map

				if [ "$map" == "" ]
				then
					map=$mapGW
				fi

                echo ''
				echo ''

				while [ "$collchoice" = "null" ]
				do
					printf "Do you want to use a STEAM Collection (y/n) [default : y]:	"
					read -r collchoice
					if [ "$collchoice" == "y" ] || [ "$collchoice" == "" ]
					then
						echo ''
						printf "ID of STEAM Collection [default : $collectionGW]:	"
                		read -r collection
               		elif [ "$collchoice" == "n" ]
					then
						collection="none"
					else
						collchoice="null"
						printf "${RED}Your choice isn't right${NC}\n"
						echo ''
						read -p "Press any key to continue"
						echo ''
					fi
				done

				if [ "$collection" == "" ]
				then
					collection=$collectionGW
				fi
                ;;
        "sandbox")
                printf "Number of maximum slots [default : $slotsSandbox]:	"
                read -r slots

				if [ "$slots" == "" ]
				then
					slots=$slotsSandbox
				fi

                echo ''
				echo ''

				printf "Starting map [default : $mapSandbox]:	"
                read -r map

				if [ "$map" == "" ]
				then
					map=$mapSandbox
				fi

                echo ''
				echo ''

				while [ "$collchoice" = "null" ]
				do
					printf "Do you want to use a STEAM Collection (y/n) [default : y]:	"
					read -r collchoice
					if [ "$collchoice" == "y" ] || [ "$collchoice" == "" ]
					then
						echo ''
						printf "ID of STEAM Collection [default : $collectionSandbox]:	"
                		read -r collection
               		elif [ "$collchoice" == "n" ]
					then
						collection="none"
					else
						collchoice="null"
						printf "${RED}Your choice isn't right${NC}\n"
						echo ''
						read -p "Press any key to continue"
						echo ''
					fi
				done

				if [ "$collection" == "" ]
				then
					collection=$collectionSandbox
				fi
                ;;
        "terrortown")
                printf "Number of maximum slots [default : $slotsTTT]:	"
                read -r slots

				if [ "$slots" == "" ]
				then
					slots=$slotsTTT
				fi

                echo ''
				echo ''

				printf "Starting map [default : $mapTTT]:	"
                read -r map

				if [ "$map" == "" ]
				then
					map=$mapTTT
				fi

                echo ''
				echo ''

				while [ "$collchoice" = "null" ]
				do
					printf "Do you want to use a STEAM Collection (y/n) [default : y]:	"
					read -r collchoice
					if [ "$collchoice" == "y" ] || [ "$collchoice" == "" ]
					then
						echo ''
						printf "ID of STEAM Collection [default : $collectionTTT]:	"
                		read -r collection
               		elif [ "$collchoice" == "n" ]
					then
						collection="none"
					else
						collchoice="null"
						printf "${RED}Your choice isn't right${NC}\n"
						echo ''
						read -p "Press any key to continue"
						echo ''
					fi
				done

				if [ "$collection" == "" ]
				then
					collection=$collectionTTT
				fi
                ;;
        *)
                echo "${RED}This gamemode isn't supported yet.${NC}\n"
                ;;
	esac

	clear

	# Serveur launch
	if [ "$collection" == "none" ]
	then
		command="$HOME/steamcmd/gmod/srcds_run -game garrysmod +maxplayers $slots +gamemode $gamemode +map $map -authkey $authkey"
	else
		command="$HOME/steamcmd/gmod/srcds_run -game garrysmod +maxplayers $slots +gamemode $gamemode +map $map +host_workshop_collection $collection -authkey $authkey"
	fi

	screen -dmS serveur $command

	if [ $(screen -ls | grep -c "serveur") -eq 0 ]
	then
		printf "${RED}You can't launch GMOD LAUNCHER directly in a screen session${NC}\n"
	else
		printf "${GREEN}Your server has been successfully launched${NC}\n"
		echo ''
		printf "To access your server console type : screen -x\n"
	fi
	echo ''
	echo ''
fi
