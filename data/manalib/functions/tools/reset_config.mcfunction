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
data modify storage manalib:manabar Symbol set value '⚡'
#endregion

# Mana Config
#Regen 1 mana/sec by default
data modify storage manalib:config ManaRegen.InitialDelay set value 20
data modify storage manalib:config ManaRegen.InitialAmount set value 1.0f
data modify storage manalib:config ManaRegen.Enabled set value 1b
#default max mana = 100
data modify storage manalib:config InitialMaxMana set value 100.0f
#endregion