

### ### ###
scoreboard players set @a take_picture 0
execute as @a[nbt={"SelectedItem":{"id":"minecraft:filled_map"}}] run scoreboard players set @s take_picture 1
execute as @e[type=minecraft:player] run function polaroid:execute3
scoreboard players set Global loop_step 0
execute if entity @e[type=minecraft:armor_stand,name=Basis,limit=1] if score Global loop_step < Global speed run function polaroid:whilebasisloop_steplspeed_4
execute as @e[type=minecraft:armor_stand,name=Ray,limit=1] at @s rotated as @s run tp @s ~ ~ ~
#9
execute at @e[type=minecraft:armor_stand,name=Ray,limit=1] run clone ~ ~ ~ ~ ~ ~ 0 3 0 replace
scoreboard players operation Global x = Global col
scoreboard players operation Global x *= c1000 Constant
scoreboard players operation @e[type=minecraft:armor_stand,name=Ray,limit=1] x = Global x
execute store result entity @e[type=minecraft:armor_stand,name=Ray,limit=1] Pos[0] double 0.001 run scoreboard players get @e[type=minecraft:armor_stand,name=Ray,limit=1] x
scoreboard players operation Global z = Global row
scoreboard players operation Global z *= c1000 Constant
scoreboard players operation @e[type=minecraft:armor_stand,name=Ray,limit=1] z = Global z
execute store result entity @e[type=minecraft:armor_stand,name=Ray,limit=1] Pos[2] double 0.001 run scoreboard players get @e[type=minecraft:armor_stand,name=Ray,limit=1] z
execute at @e[type=minecraft:armor_stand,name=Ray,limit=1] positioned ~ 1 ~ run function polaroid:execute6
setblock 0 3 0 minecraft:barrier
scoreboard players add Global col 1
execute as @e[type=minecraft:armor_stand,name=Pixel,limit=1] at @s rotated as @s run tp @s ^-0.0625 ^ ^
execute if score Global col matches 64.. run function polaroid:execute8
execute as @e[type=minecraft:armor_stand,name=Basis,limit=1] at @s run tp @s ~ ~ ~ facing entity @e[type=minecraft:armor_stand,name=Pixel,limit=1]
tp @e[type=minecraft:armor_stand,name=Ray,limit=1] @e[type=minecraft:armor_stand,name=Basis,limit=1]
scoreboard players set Global step 0

#whilebasisloop
scoreboard players add Global loop_step 1
execute as @e[type=minecraft:armor_stand,name=Ray,limit=1] at @s rotated as @s run tp @s ^ ^ ^1
scoreboard players add Global step 1
scoreboard players set Global collided 1
execute at @e[type=minecraft:armor_stand,name=Ray,limit=1] run function polaroid:execute5
execute if score Global collided matches 1.. run scoreboard players set Global step 200
execute if score Global step matches 100.. run function polaroid:execute9
execute if entity @e[type=minecraft:armor_stand,name=Basis,limit=1] if score Global loop_step < Global speed run function polaroid:whilebasisloop_steplspeed_4










scoreboard objectives add row dummy
scoreboard objectives add col dummy
scoreboard objectives add speed dummy
scoreboard objectives add z dummy
scoreboard objectives add x dummy
scoreboard objectives add loop_step dummy
scoreboard objectives add step dummy
#scoreboard objectives add take_picture dummy
scoreboard objectives add ry dummy
scoreboard objectives add rx dummy
scoreboard objectives add collided dummy
#scoreboard objectives add map_id dummy
scoreboard objectives add Constant dummy
scoreboard players set c1000 Constant 1000
execute unless block 0 5 0 minecraft:barrier run function polaroid:execute1
scoreboard players set Global speed 1000
kill @e[type=minecraft:armor_stand,name=blink]
kill @e[type=minecraft:armor_stand,name=link]
kill @e[type=minecraft:armor_stand,name=blink_ray]