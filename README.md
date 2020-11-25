# Project description
A game developed in ABAP powered by SAP NetWeaver and Google Teachable Machine.

# Motivation
Seeking to get some hands on with Teachable Machine and creating a game that my two toddlers might like to play with.

# Pre-requisites
- SAP ABAP AS NetWeaver 752 - I used the Developer Edition to create this
- Internet connection when playing the game - because of required JS/CSS libraries
- A modern browser - Yes, no IE please.

# Features
- A setup transaction (ZZATMSETUP) to create new players, games and questions with lots of customizing options such as a profile picture, game background music, game sound effects, setting delay between questions and set up different models for different games.
[![player-config.png](https://i.postimg.cc/hPn2RyTq/player-config.png)](https://postimg.cc/yWfmFTLf)
[![games-config.png](https://i.postimg.cc/DwZd7tzR/games-config.png)](https://postimg.cc/Yh5m3DYx)
[![questions-config.png](https://i.postimg.cc/vZW2VRyT/questions-config.png)](https://postimg.cc/k2gv0pBP)

- Sample model, images and sound effects included in BSP application - see folder "demo_assets"
[![demo-assets.png](https://i.postimg.cc/rwrGd5S9/demo-assets.png)](https://postimg.cc/qNp6ShDt)

- Debug mode. If option is checked for the Player, the model class labels and scores will be displayed during gameplay
[![debug-mode.png](https://i.postimg.cc/wBb0L91X/debug-mode.png)](https://postimg.cc/CZkGVTH5)

# How to play
1. Train and test your own audio model on Teachable Machine
2. Export model and upload metadata.json, model.json and weights.bin to SAP NetWeaver BSP application
3. Set up a new Player, Game and Questions - with links to images to be displayed as flash cards 
4. Run BSP application in a modern browser - Chrome, Firefox or Edge
5. Automated question progression during gameplay and answers captured through audio. 

[![gameplay.gif](https://i.postimg.cc/vmCprrjH/gameplay.gif)](https://postimg.cc/KKrqFMxd)

# Credits
See 'Credits' page in application
