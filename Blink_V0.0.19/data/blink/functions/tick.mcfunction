# blink:tick
schedule function blink:tick 1t
#execute as @a[scores={blink=1..}] run function blink:blink
#OG
# execute as @a[scores={blink=1..}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink
# Tracer
execute as @a[scores={blink=1..},nbt={SelectedItem:{id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink
execute as @a[scores={blink=1..},nbt={Inventory:[{Slot:-106b,id:"minecraft:carrot_on_a_stick",tag: {Tags: ["blink"]}}]}] at @s anchored eyes positioned ^-0.5 ^ ^ run function blink:blink

scoreboard players set @a blink 0