# GMOD-Launcher

GMOD-Launcher is a bash script that permit to quickly create a Garry's Mod server in a screen daemon on a UNIX dedicated server with basic options.

## Requirements

* Dedicated Server using UNIX OS
* Default steamcmd folder at the root of the user home
* Garry's Mod Gamemodes downloaded and already installed in the following folder : 
```
$HOME/steamcmd/gmod/garrysmod/gamemodes
```
* To use implemented gamemodes configuration, folders need to be correctly spelled, as the original release of the gamemode author.



| Trouble in Terrorist Town | murder   | guesswho | slashers | Extreme Football Throwdown | Sandbox |
| ------------------------- | -------- | -------- | -------- | -------------------------- | ------- |
| terrortown                | murder   | guesswho | slashers | extremefootballthrowdown   | sandbox |


## How to use it


### 1) Add your steam API Key

You need to add a [Steam API Key](https://steamcommunity.com/dev/apikey) directly in the file "gmod-launcher.sh".

```
# API KEY for Steam

authkey="YOUR API STEAM KEY"
```
### 2) Set your default configuration

Implemented gamemodes have their default configuration in the file "gmod-launcher.sh" like the following :
```
####### [GAMEMODENAME] Config ################################################

slots="max_slots"
map="default_map"
collection="CollectionID"
```

You are free to change the default configuration for every implemented gamemodes.

### 3) Launch the script on your server

You can now launch the script on your server, GMOD-Launcher will simplify the creation of the Garry's Mod Server and make it more efficient.


## Supported Gamemodes

* All gamemodes are supported

## Gamemodes with customizable default settings

* Murder
* Slashers
* Extreme Football Throwdown
* Guess Who
* Sandbox
* TerrorTown
