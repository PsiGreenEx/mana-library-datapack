#Universal Mana Library
#By PsiGreen
#Discord: Green#9836

#Setup New Player's Stats
execute as @a[scores={ml_max_mana=0}] store result score @s ml_max_mana run data get storage manalib:config DefaultStats.MaxMana
execute as @a[scores={ml_regen_delay=0}] store result score @s ml_regen_delay run data get storage manalib:config DefaultStats.ManaRegen.Delay
execute as @a[scores={ml_regen_amount=0}] store result score @s ml_regen_amount run data get storage manalib:config DefaultStats.ManaRegen.Amount

#Regen Mana
execute as @a unless score @s ml_cooldown matches ..0 run scoreboard players remove @s ml_cooldown 1
execute as @a[scores={ml_cooldown=..0}] run scoreboard players operation @s ml_add = @s ml_regen_amount
execute as @a[scores={ml_cooldown=..0}] run scoreboard players operation @s ml_cooldown = @s ml_regen_delay

#Sub and Add
execute as @a[scores={ml_add=1..}] run function manalib:_add_mana
execute as @a[scores={ml_sub=1..}] run function manalib:_sub_mana
