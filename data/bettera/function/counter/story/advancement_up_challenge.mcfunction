function bettera:counter/advancement_up_challenge {"tab":"story","frame":"challenge"}
tag @s add stop_default
scoreboard players add #global sound_list 1
scoreboard players operation @s sound_list = #global sound_list
schedule function bettera:counter/sound/stop_challenge_sound 14t append
