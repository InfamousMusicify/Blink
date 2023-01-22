#blink:blink  # execute3
execute at @s positioned ~ ~1.6 ~ run summon minecraft:armor_stand ~ ~ ~ {"CustomName":"\"blink\"", "Marker":1b, "NoGravity":1b, "Invulnerable":1b}
execute at @s positioned ~ ~1.6 ~ run summon minecraft:armor_stand ~ ~ ~ {"CustomName":"\"link\"", "Marker":1b, "NoGravity":1b, "Invulnerable":1b}
execute store result score @s ry run data get entity @s Rotation[0] 1
scoreboard players operation Global ry = @s ry
scoreboard players operation @e[type=minecraft:armor_stand,name=link,limit=1] ry = Global ry
execute store result entity @e[type=minecraft:armor_stand,name=link,limit=1] Rotation[0] float 1.0 run scoreboard players get @e[type=minecraft:armor_stand,name=link,limit=1] ry
execute store result score @s rx run data get entity @s Rotation[1] 1
scoreboard players operation Global rx = @s rx
scoreboard players operation @e[type=minecraft:armor_stand,name=link,limit=1] rx = Global rx
execute store result entity @e[type=minecraft:armor_stand,name=link,limit=1] Rotation[1] float 1.0 run scoreboard players get @e[type=minecraft:armor_stand,name=link,limit=1] rx
execute as @e[type=minecraft:armor_stand,name=link,limit=1] at @s rotated as @s run tp @s ^4 ^4 ^5
execute at @e[type=minecraft:armor_stand,name=blink,limit=1] run summon minecraft:armor_stand ~ ~ ~ {"CustomName":"\"blink_ray\"", "Marker":1b, "NoGravity":1b, "Invulnerable":1b}
tp @e[type=minecraft:armor_stand,name=blink_ray,limit=1] @e[type=minecraft:armor_stand,name=blink,limit=1]
scoreboard players set Global row -64
scoreboard players set Global col -64
scoreboard players set Global step 0
#scoreboard players set @s map_id 0
#execute store result entity @s SelectedItem.tag.map int 1.0 run scoreboard players get @s map_id

kill @e[type=minecraft:armor_stand,name=blink,limit=1]
kill @e[type=minecraft:armor_stand,name=link,limit=1]
kill @e[type=minecraft:armor_stand,name=blink_ray,limit=1]