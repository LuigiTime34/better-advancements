scoreboard players remove @s advancement.sound.challenge 1
execute as @a if score @s advancement.sound.challenge matches ..0 run scoreboard players set @s advancement.sound.challenge 7
function bettera:config/personal/personal_settings