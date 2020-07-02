scoreboard players operation @s ml_mana += @s ml_add
execute if score @s ml_mana > @s ml_max_mana run scoreboard players operation @s ml_mana = @s ml_max_mana
scoreboard players set @s ml_add 0