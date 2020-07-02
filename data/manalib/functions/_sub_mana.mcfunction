scoreboard players operation @s ml_mana -= @s ml_sub
execute if score @s ml_mana matches ..-1 run scoreboard players set @s ml_mana 0
scoreboard players set @s ml_sub 0