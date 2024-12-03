scoreboard players set @s advancements_reset 0
scoreboard players set @s advancement_count 0
scoreboard players set @s advancements_completed 0
scoreboard players set @s advancement_count_adventure 0
scoreboard players set @s advancement_count_end 0
scoreboard players set @s advancement_count_husbandry 0
scoreboard players set @s advancement_count_nether 0
scoreboard players set @s advancement_count_story 0
scoreboard players set @s advancement_count_task 0
scoreboard players set @s advancement_count_challenge 0
scoreboard players set @s advancement_count_goal 0
advancement revoke @s through minecraft:adventure/root
advancement revoke @s through minecraft:story/root
advancement revoke @s through minecraft:nether/root
advancement revoke @s through minecraft:end/root
advancement revoke @s through minecraft:husbandry/root
advancement revoke @s only bettera:overachiever/root
advancement revoke @s only bettera:triggers/reset
tellraw @s {"text": "Your Advancement progress has been reset!","color": "red"}
title @s subtitle {"text": "Your Advancement progress has been reset!","color": "red"}
title @s title ""
execute at @s run playsound block.respawn_anchor.deplete master @s ~ ~ ~ 1000000