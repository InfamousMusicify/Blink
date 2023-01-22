# blink:load
schedule function blink:tick 1t
scoreboard objectives add blink minecraft.used:minecraft.carrot_on_a_stick
#minecraft.dropped:minecraft.ender_eye

scoreboard players reset @a blink
scoreboard objectives add blink.count dummy
scoreboard players reset @a blink.count
scoreboard players set Counter blink.count 4