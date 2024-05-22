execute as @a[predicate=dim_status:is_in_overworld,team=!pawek.ds.in_overworld] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team join pawek.ds.in_overworld @s
execute as @a[predicate=dim_status:is_in_the_nether,team=!pawek.ds.in_nether] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team join pawek.ds.in_nether @s
execute as @a[predicate=dim_status:is_in_the_end,team=!pawek.ds.in_end] unless entity @s[team=afkDis.afk] unless entity @s[scores={pawek.ds.optout=1}] run team join pawek.ds.in_end @s

execute as @a if entity @s[team=pawek.ds.in_overworld] unless predicate dim_status:is_in_overworld run team leave
execute as @a if entity @s[team=pawek.ds.in_nether] unless predicate dim_status:is_in_the_nether run team leave
execute as @a if entity @s[team=pawek.ds.in_end] unless predicate dim_status:is_in_the_end run team leave

execute if score pawek.ds.check pawek.ds.optout matches 1 run scoreboard players enable @a pawek.ds.optout
execute if score pawek.ds.check pawek.ds.optout matches 0 run scoreboard players reset @a pawek.ds.optout
scoreboard players set @a[scores={pawek.ds.optout=2..}] pawek.ds.optout 0

execute as @a[scores={pawek.ds.optout=1},team=pawek.ds.in_overworld] run team leave @s
execute as @a[scores={pawek.ds.optout=1},team=pawek.ds.in_nether] run team leave @s
execute as @a[scores={pawek.ds.optout=1},team=pawek.ds.in_end] run team leave @s
