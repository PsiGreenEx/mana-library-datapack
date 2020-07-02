#Universal Mana Library
#By PsiGreen
#Discord: Green#9836

#Regen Mana
execute as @a unless score @s ml_cooldown matches ..0 run scoreboard players remove @s ml_cooldown 1
execute as @a[scores={ml_cooldown=..0}] store result score @s ml_add run data get storage manalib:config ManaRegen.Amount
execute as @a[scores={ml_cooldown=..0}] store result score @s ml_cooldown run data get storage manalib:config ManaRegen.Delay

#Setup New Player's Stats
execute as @a[scores={ml_max_mana=0}] store result score @s ml_max_mana run data get storage manalib:config DefaultStats.MaxMana

