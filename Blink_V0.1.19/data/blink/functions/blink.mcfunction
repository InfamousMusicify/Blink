scoreboard players reset @s[scores={blink=1..}] blink
particle soul_fire_flame ~ ~ ~ 0 0 0 0 1 force
scoreboard players add @s blink.count 1
execute unless block ~ ~ ~ air run particle flame ~ ~ ~ 0.5 0.5 0.5 0.01 70 force
execute unless block ~ ~ ~ air run tp @s ~ ~0.3 ~
execute unless score @s blink.count matches 300 if block ~ ~ ~ air positioned ^ ^ ^1 run function blink:blink
scoreboard players reset @s blink.count