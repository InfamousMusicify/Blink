# blink:load
schedule function blink:tick 1s
schedule function blink:cooldown 1s
scoreboard objectives add blink minecraft.used:minecraft.carrot_on_a_stick
#minecraft.dropped:minecraft.ender_eye

scoreboard players reset @a blink
scoreboard objectives add blink.count dummy
scoreboard players reset @a blink.count
scoreboard players set #counter blink.count 4
scoreboard objectives add blink.cooldown dummy
scoreboard objectives add blink.config dummy

execute unless score #config blink.config matches 0.. run scoreboard players set #config blink.config 0
execute unless score #cooldown blink.config matches 0.. run scoreboard players set #cooldown blink.config 0