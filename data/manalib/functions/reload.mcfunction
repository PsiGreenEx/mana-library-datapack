# Definitions
#define score_holder mlHundred 100
#define storage manalib:manabar Contains strings for mana bar.
#define storage manalib:config Variables for config.
#endregion

# Setup
#player stats
scoreboard objectives add ml_mana dummy
scoreboard objectives add ml_max_mana dummy
scoreboard objectives add ml_regen_delay dummy
scoreboard objectives add ml_regen_amount dummy

#tools
scoreboard objectives add ml_add dummy
scoreboard objectives add ml_sub dummy

#function only
scoreboard objectives add ml_percent_mana dummy
scoreboard objectives add ml_opnum dummy
scoreboard objectives add ml_cooldown dummy
scoreboard players set mlHundred ml_opnum 100
#endregion

# Mana Bar Text
data modify storage manalib:manabar 1 set value '[{"text":" ┃▉▉▉▉▉▉▉▉▉▉"}, {"text":"", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 2 set value '[{"text":" ┃▉▉▉▉▉▉▉▉▉▍"}, {"text":"▍", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 3 set value '[{"text":" ┃▉▉▉▉▉▉▉▉▉"}, {"text":"▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 4 set value '[{"text":" ┃▉▉▉▉▉▉▉▉▍"}, {"text":"▍▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 5 set value '[{"text":" ┃▉▉▉▉▉▉▉▉"}, {"text":"▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 6 set value '[{"text":" ┃▉▉▉▉▉▉▉▍"}, {"text":"▍▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 7 set value '[{"text":" ┃▉▉▉▉▉▉▉"}, {"text":"▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 8 set value '[{"text":" ┃▉▉▉▉▉▉▍"}, {"text":"▍▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 9 set value '[{"text":" ┃▉▉▉▉▉▉"}, {"text":"▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 10 set value '[{"text":" ┃▉▉▉▉▉▍"}, {"text":"▍▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 11 set value '[{"text":" ┃▉▉▉▉▉"}, {"text":"▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 12 set value '[{"text":" ┃▉▉▉▉▍"}, {"text":"▍▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 13 set value '[{"text":" ┃▉▉▉▉"}, {"text":"▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 14 set value '[{"text":" ┃▉▉▉▍"}, {"text":"▍▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 15 set value '[{"text":" ┃▉▉▉"}, {"text":"▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 16 set value '[{"text":" ┃▉▉▍"}, {"text":"▍▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 17 set value '[{"text":" ┃▉▉"}, {"text":"▉▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 18 set value '[{"text":" ┃▉▍"}, {"text":"▍▉▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 19 set value '[{"text":" ┃▉"}, {"text":"▉▉▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 20 set value '[{"text":" ┃▍"}, {"text":"▍▉▉▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
data modify storage manalib:manabar 21 set value '[{"text":" ┃"}, {"text":"▉▉▉▉▉▉▉▉▉▉", "color":"dark_gray"}, {"text": "┃", "color": "aqua"}]'
execute unless data storage manalib:manabar Symbol run data modify storage manalib:manabar Symbol set value '⚡'
#endregion

# Mana Config
#Regen 1 mana/sec by default
execute unless data storage manalib:config DefaultStats.ManaRegen.Delay run data modify storage manalib:config DefaultStats.ManaRegen.Delay set value 20s
execute unless data storage manalib:config DefaultStats.ManaRegen.Amount run data modify storage manalib:config DefaultStats.ManaRegen.Amount set value 1.0f
execute unless data storage manalib:config DefaultStats.ManaRegen.Enabled run data modify storage manalib:config DefaultStats.ManaRegen.Enabled set value 1b
#default max mana = 100
execute unless data storage manalib:config DefaultStats.MaxMana run data modify storage manalib:config DefaultStats.MaxMana set value 100.0f
#endregion

#init new players
execute as @a unless entity @s[scores={ml_max_mana=-2147483648..2147483647}] store result score @s ml_max_mana run data get storage manalib:config DefaultStats.MaxMana

tellraw @a {"text": "Mana Library has loaded!", "color": "blue", "hoverEvent": {"action": "show_text", "contents": "Thanks for using my pack!"}}
