execute as @a[tag=stop_default] if score @s sound_list matches 1 run stopsound @s * minecraft:ui.toast.challenge_complete
execute as @a[tag=stop_default] if score @s sound_list matches 1 at @s run function bettera:counter/sound/challenge
execute as @a if score @s sound_list matches 1.. run scoreboard players remove @s sound_list 1
scoreboard players remove #global sound_list 1
execute as @a if score @s sound_list matches ..0 run scoreboard players reset @a sound_list
execute as @a[tag=stop_default] if score @s sound_list matches 1 run tag @s remove stop_default