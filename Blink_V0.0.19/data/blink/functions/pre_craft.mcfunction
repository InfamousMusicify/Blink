recipe take @a blink:blink_rcp
advancement revoke @s only blink:blink_adv
loot give @s loot blink:blink_loot
clear @s minecraft:knowledge_book

#og working line with enchants
#{"type":"minecraft:loot","pools":[{"rolls":1,"entries":[{"type":"item","name":"minecraft:carrot_on_a_stick","functions":[{"function":"set_nbt","tag":"{CustomModelData:991982,Tags:[\"blink\"],Enchantments:[{}]}"},{"function":"set_name","name":[{"text":"Blink","color":"white","italic":false}]},{"function":"set_lore","lore":[{"text":"Teleport to Crosshair","color":"gray","italic":false}]}]}]}]}
# sexier none enchant
#{"type":"minecraft:loot","pools":[{"rolls":1,"entries":[{"type":"item","name":"minecraft:carrot_on_a_stick","functions":[{"function":"set_nbt","tag":"{CustomModelData:991982,Tags:[\"blink\"]}"},{"function":"set_name","name":[{"text":"Blink","color":"white","italic":false}]},{"function":"set_lore","lore":[{"text":"Teleport to Crosshair","color":"gray","italic":false}]}]}]}]}
