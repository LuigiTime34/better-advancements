# Set Scores To Default When Joining
execute as @a[tag=!set_default] run function bettera:set_scores_to_default

# When Pigs Fly Checks
execute as @a if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"vehicle":{"type":"minecraft:pig"}}} on vehicle store result score @s air_time run data get entity @s FallDistance
execute as @a if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"vehicle":{"type":"minecraft:pig"}}} on vehicle if entity @s[scores={air_time=5..}] on passengers run advancement grant @s only bettera:husbandry/when_pigs_fly

# Thanks a Million Check
execute as @a[advancements={bettera:adventure/thanks_a_million=false}] run function bettera:advancement/thanks_a_million_check

# Trigger Checks
execute as @a if score @s advancements matches 1.. run function bettera:get_advancement_count
execute as @a[scores={advancement.config=1..}] run function bettera:config/personal/personal_settings
execute as @a if score @s advancement.config matches -22 at @s run function bettera:config/personal/task_sound_up
execute as @a if score @s advancement.config matches -2 at @s run function bettera:config/personal/task_sound_down
execute as @a if score @s advancement.config matches -33 at @s run function bettera:config/personal/goal_sound_up
execute as @a if score @s advancement.config matches -3 at @s run function bettera:config/personal/goal_sound_down
execute as @a if score @s advancement.config matches -44 at @s run function bettera:config/personal/challenge_sound_up
execute as @a if score @s advancement.config matches -4 at @s run function bettera:config/personal/challenge_sound_down
execute as @a if score @s advancement.config matches -20 at @s run function bettera:config/personal/listen_to_sound_task
execute as @a if score @s advancement.config matches -30 at @s run function bettera:config/personal/listen_to_sound_goal
execute as @a if score @s advancement.config matches -40 at @s run function bettera:config/personal/listen_to_sound_challenge
