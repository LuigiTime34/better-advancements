$scoreboard players set $(username) advancements_reset 1
$execute if entity $(username) run tellraw @s {"text":"Success!\n$(username)'s Advancement progress has been reset.","color":"green"}
$execute unless entity $(username) run tellraw @s {"text":"Success!\n$(username)'s Advancement progress will reset when they rejoin the world.","color":"green"}