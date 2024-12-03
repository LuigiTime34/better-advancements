playsound minecraft:ui.button.click master @s ~ ~ ~ 10

tellraw @s ["",{"text":"\nBetter Advancements Global Config",   "bold":true,"color":"gray"},{"text":"\n"},{"text":"-------------------------","color":"gray"}]

execute if score #ShowCounterTab advancement.config matches 1 run tellraw @s ["",{"text":"Show Counter in tab? ","color": "gold"},{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_display_tab_2"}}]
execute if score #ShowCounterTab advancement.config matches 2 run tellraw @s ["",{"text":"Show Counter in tab? ","color": "gold"},{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_display_tab_1"}}]
execute if score #ShowCounterSidebar advancement.config matches 1 run tellraw @s ["",{"text":"Show Counter in sidebar? ","color": "gold"},{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_display_sidebar_2"}}]
execute if score #ShowCounterSidebar advancement.config matches 2 run tellraw @s ["",{"text":"Show Counter in sidebar? ","color": "gold"},{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_display_sidebar_1"}}]
execute if score #ShowCounterNametag advancement.config matches 1 run tellraw @s ["",{"text":"Show Counter over nametag? ","color": "gold"},{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_display_nametag_2"}}]
execute if score #ShowCounterNametag advancement.config matches 2 run tellraw @s ["",{"text":"Show Counter over nametag? ","color": "gold"},{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_display_nametag_1"}}]

execute if score #AnnounceAdvancements advancement.config matches 1 run tellraw @s ["",{"text":"Annouce Advancements in Chat? ","color": "gold"},{"text":"[\u274c]","color":"dark_red","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_announce_2"}}]
execute if score #AnnounceAdvancements advancement.config matches 2 run tellraw @s ["",{"text":"Annouce Advancements in Chat? ","color": "gold"},{"text":"[\u2714]","color":"dark_green","clickEvent":{"action":"run_command","value":"/function bettera:config/global/set_announce_1"}}]

tellraw @s {"text":"Change Display Name","color":"green","clickEvent":{"action":"run_command","value":"/function bettera:config/global/change_name with storage bettera:display_name"},"hoverEvent":{"action":"show_text","contents":"Change the Display Name of the Advancement Counter"}}

tellraw @s {"text":"Reset Advancement Progress","color":"dark_red","clickEvent":{"action":"suggest_command","value":"/function bettera:config/global/reset {\"username\":\"\"}"},"hoverEvent":{"action":"show_text","contents":"Type in the username of a player in between the set of empty quotes to reset all of their Advancement Progress"}}

tellraw @s {"text":"-------------------------","color":"gray"}

tellraw @s {"text":"[<<] Go back","color":"gray","clickEvent":{"action":"run_command","value":"/trigger advancement.config"},"hoverEvent":{"action":"show_text","contents":"Go back to your personal settings"}}