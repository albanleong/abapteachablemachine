# Project description
Bringing together a 20+ year old technology platform with today's latest ML engine. A flash card game developed in ABAP and Javascript powered by SAP NetWeaver and Teachable Machine by Google.
[![gameplay.gif](https://i.postimg.cc/vmCprrjH/gameplay.gif)](https://postimg.cc/KKrqFMxd)


# Motivation
After reading a blog and watching a video by Dale Markowitz [Build a Machine Learning Model in 10 Minutes](https://daleonai.com/ml-model-ten-mins) on how easy it is to now create and train your own model with Teachable Machine, I was hoping to get some hands on with it. Also, my two kids were the motivation and inspiration in creating this flash card game and as an added bonus, they seemed to like it! Can't say that I am proud of the final game UI/UX design and aesthetics but since I am not a front-end/UI/UX designer, this'll do...


# Features
- A setup transaction (ZZATMSETUP) to create new players, games and questions with lots of customizing options such as setting a profile picture, game background music, game sound effects, setting delay between questions and set up different ML models for different games.

- Sample model, images and sound effects included in BSP application - see folder "demo_assets" in BSP application and screenshot in the "Setup" section
NOTE: The attached sample ML model was trained with only my voice, it might not work for you - in my test with my kids, it detected their response with only about 60% accuracy. It'd be best if you create and re-train a model with your own voice, it's extremely easy and sort of the main motivation to create this game.

- Debug mode. If option is checked during player setup, the ML model class labels and scores will be displayed at the bottom of the screen during gameplay
[![debug-mode.png](https://i.postimg.cc/wBb0L91X/debug-mode.png)](https://postimg.cc/CZkGVTH5)


# Pre-requisites
- A running SAP NetWeaver AS ABAP 752 server with BSP configured - I used the latest currently available (Nov 2020) [Developer Edition](https://blogs.sap.com/2019/07/01/as-abap-752-sp04-developer-edition-to-download/) server to develop this. Might be compatible with lower ABAP versions but no guarantees.
- Clone this repository to your ABAP server. It should contain just a single local package $ZZATM with the required BSP application and all the data dictionary objects. 
- Internet connection when playing the game - because of required JS/CSS libraries
- A microphone so that your response can be captured and matched with the ML model
- A modern browser - Yes, anything but IE please.


# Setup
1. Train and test your own ML audio model on [Teachable Machine](https://teachablemachine.withgoogle.com/) - HAVE FUN!
2. Export model : Either download the model (ZIP file) or get the shareable link on Teachable Machine. 
3. If you've downloaded the model locally, unzip your model and upload 'metadata.json', 'model.json' and 'weights.bin' to ABAP server. I have created a 'models' folder under the BSP application ZZATM.
3. Run transaction ZZATMSETUP to create a new player, game and questions.

#### Player
1. Player name - Up to 40 characters is supported but avoid using any special characters such as &,%,*,$ etc...
2. Debug - If this option is checked, during gameplay, the class labels and scores will be displayed below the screen.
3. Sound settings - configure different background music during gameplay and sound effects for when getting a correct answer and when the game ends.
[![player-config.png](https://i.postimg.cc/hPn2RyTq/player-config.png)](https://postimg.cc/yWfmFTLf)

#### Games
1. Game name - Up to 40 characters is supported but avoid using any special characters such as &,%,*,$ etc...
2. Game type - Only one option is available now but this gives the flexibility to create more games and route them to different pages.
3. Game model - The full and complete URL (https) to the ML model that contains model.json, metadata.json and weights.bin
4. Match probability - The minimum score match to consider that it's a correct answer. When the ML model is 100% sure, the score is 1.00. Recommended config would be between 0.80 (easy difficulty - not really accurate), 0.90 (medium difficulty) or 1.00 (hard difficulty - highly accurate match)
5. Time to answer - The time in seconds to display the flash card image and listen for an answer. Rcommended config can be something like 10 seconds (easy difficulty) - 5 seconds (medium difficulty) or 3 seconds (hard difficulty).
[![games-config.png](https://i.postimg.cc/DwZd7tzR/games-config.png)](https://postimg.cc/Yh5m3DYx)

#### Questions
1. Array index - this is a little tricky - you need to match the wordLabels array in the metadata.json file of your model. Typically, "Background noise" is the first entry so you can ignore array[0], and you just need to note what the other class labels are and their array index.
2. Image URL - The flash card image to display when showing this question and remember to match the array index correctly. 
[![word-labels-metadata.png](https://i.postimg.cc/HxDHhpfm/word-labels-metadata.png)](https://postimg.cc/McDhc863)
[![questions-config.png](https://i.postimg.cc/vZW2VRyT/questions-config.png)](https://postimg.cc/k2gv0pBP)
See array index 4,5,6 and look at the matching answer - 1, 3,2 - so, don't always assume that it is in order.

#### Sample - demo_assets
[![demo-assets.png](https://i.postimg.cc/rwrGd5S9/demo-assets.png)](https://postimg.cc/qNp6ShDt)


# How to play?
1. Launch the BSP application on a browser - eg: https://vhcalnplci.dummy.nodomain:44300/sap/bc/bsp/sap/zzatm/index.html is the path on my ABAP developer edition server and if you've set up a player, you should see it.

2. Select a player
[![select-a-player.png](https://i.postimg.cc/cH8cb6xh/select-a-player.png)](https://postimg.cc/xJnHkfbN)

3. Select a game
[![select-a-game.png](https://i.postimg.cc/wvKN32z5/select-a-game.png)](https://postimg.cc/3yBNcgdW)

4. Say the flash card that is displayed!

#### Gameplay screen
[![gameplay-screen.png](https://i.postimg.cc/9X1PCz1L/gameplay-screen.png)](https://postimg.cc/V5r0Ffxt)

# Credits
See 'Credits' page in application
