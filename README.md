# mana-library-datapack
 Universal Mana System for Minecraft: Java Edition Datapacks

# How to use this datapack
 `manalib:tools/delete_scoreboards` function: This will delete all manalib scoreboard objectives.
 
 `manalib:tools/reset_scoreboards` function: This will delete and readd each variable.
 
 `manalib:tools/reset_config` function: This will reset the data stored in the storages `manalib:manabar` and `manalib:config`
 
 `manalib:display_manabar` function: Display the manabar for the player who ran it. Needs to be run every tick to update it in real time. Would not recommened having this run all the time for the player's sake. Best practice would be to only show when something that uses mana is being held or when mana is being used.
 
 `ml_add` and `ml_sub` objectives: Setting these will add and subtract mana for the player it was set on. It automatically makes sure it will never go below zero or above the maximum mana.
 
 `manalib:config` storage: Adjust the tags in this storage to config the default stats.
 
 `manalib:manabar` storage: Edit the `Symbol` tag to change the symbol for mana in the mana bar
 
 `ml_max_mana`, `ml_regen_delay`, and `ml_regen_amount`: `ml_regen_delay` is how many ticks between each regen. `ml_regen_amount` is the amount of mana gained per regen. These stats can be increased.
