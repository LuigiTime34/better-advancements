gamerule announceAdvancements true
scoreboard objectives add death_count deathCount
scoreboard objectives add health health
scoreboard objectives add air_time dummy
scoreboard players reset @e air_time
scoreboard objectives add advancement_count_adventure dummy
scoreboard objectives add advancement_count_end dummy
scoreboard objectives add advancement_count_husbandry dummy
scoreboard objectives add advancement_count_nether dummy
scoreboard objectives add advancement_count_story dummy
scoreboard objectives add advancement_count_task dummy
scoreboard objectives add advancement_count_goal dummy
scoreboard objectives add advancement_count_challenge dummy
scoreboard objectives add advancements trigger
scoreboard objectives add advancements_completed dummy
scoreboard objectives add advancement.config trigger
scoreboard objectives add advancement.sound.task dummy
scoreboard objectives add advancement.sound.goal dummy
scoreboard objectives add advancement.sound.challenge dummy
scoreboard objectives add advancement.sound.challenge.stop dummy
scoreboard objectives add advancement.display.actionbar dummy
scoreboard objectives add advancement_count dummy "Advancements"
scoreboard objectives add advancements_remaining dummy
scoreboard objectives add advancements_reset dummy
scoreboard objectives add advancements.distance_walked minecraft.custom:minecraft.walk_one_cm
scoreboard objectives add advancements.distance_sneaking minecraft.custom:minecraft.crouch_one_cm
scoreboard objectives add advancements.distance_sprinted minecraft.custom:minecraft.sprint_one_cm
scoreboard objectives add advancements.distance_creative minecraft.custom:minecraft.fly_one_cm
scoreboard objectives add advancements.distance_flown minecraft.custom:minecraft.aviate_one_cm
scoreboard objectives add advancements.distance_swam minecraft.custom:minecraft.swim_one_cm
scoreboard objectives add advancements.distance_walked_water minecraft.custom:minecraft.walk_on_water_one_cm
scoreboard objectives add advancements.distance_strider minecraft.custom:minecraft.strider_one_cm
scoreboard objectives add advancements.distance_horse minecraft.custom:minecraft.horse_one_cm
scoreboard objectives add advancements.distance_pig minecraft.custom:minecraft.pig_one_cm
scoreboard objectives add advancements.distance_minecart minecraft.custom:minecraft.minecart_one_cm
scoreboard objectives add advancements.total_distance_travelled dummy
scoreboard objectives add advancements.use_firework minecraft.used:minecraft.firework_rocket


scoreboard objectives add sound_list dummy
scoreboard players set #TotalAdvancements advancements_remaining 185
execute unless score #ShowCounterSidebar advancement.config matches 1 run scoreboard objectives setdisplay sidebar advancement_count
execute unless score #ShowCounterTab advancement.config matches 1.. run scoreboard players set #ShowCounterTab advancement.config 1 
execute unless score #ShowCounterNametag advancement.config matches 1.. run scoreboard players set #ShowCounterNametag advancement.config 1
execute unless score #ShowCounterSidebar advancement.config matches 1.. run scoreboard players set #ShowCounterSidebar advancement.config 2
execute unless score #AnnounceAdvancements advancement.config matches 1.. run scoreboard players set #AnnounceAdvancements advancement.config 2

tellraw @a {"text":"Better Advancements Has Loaded Succesfully!","bold":true,"color":"dark_gray"}