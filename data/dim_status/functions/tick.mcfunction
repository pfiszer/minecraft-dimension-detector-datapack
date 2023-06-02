execute as @a[nbt={Dimension:"minecraft:overworld"},team=!pawek.in_overworld] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team leave @s
execute as @a[nbt={Dimension:"minecraft:overworld"},team=!pawek.in_overworld] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team join pawek.in_overworld @s

execute as @a[nbt={Dimension:"minecraft:the_nether"},team=!pawek.in_nether] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team leave @s
execute as @a[nbt={Dimension:"minecraft:the_nether"},team=!pawek.in_nether] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team join pawek.in_nether @s

execute as @a[nbt={Dimension:"minecraft:the_end"},team=!pawek.in_end] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team leave @s
execute as @a[nbt={Dimension:"minecraft:the_end"},team=!pawek.in_end] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team join pawek.in_end @s

execute if score pawek.ds.check pawek.ds.optout matches 1 run scoreboard players enable @a pawek.ds.optout
execute if score pawek.ds.check pawek.ds.optout matches 0 run scoreboard players reset @a pawek.ds.optout
scoreboard players set @a[scores={pawek.ds.optout=2..}] pawek.ds.optout 0

execute as @a[scores={pawek.ds.optout=1},team=pawek.in_overworld] run team leave @s
execute as @a[scores={pawek.ds.optout=1},team=pawek.in_nether] run team leave @s
execute as @a[scores={pawek.ds.optout=1},team=pawek.in_end] run team leave @s
