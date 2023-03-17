scoreboard players add @s blink.cooldown 0
execute at @s[scores={blink.cooldown=0},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}}] anchored eyes positioned ^ ^ ^ run function blink:blink
execute at @s[scores={blink.cooldown=0},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}]}] anchored eyes positioned ^ ^ ^ run function blink:blink


#execute as @s[nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink
#execute as @s[nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}]}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink
#execute as @a[scores={blink=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink
#execute as @a[scores={blink=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}]}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink



scoreboard players reset @s blink