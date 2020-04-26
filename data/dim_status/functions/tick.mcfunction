execute as @a[nbt={Dimension:0},team=!in_overworld] run team leave @s
execute as @a[nbt={Dimension:0},team=!in_overworld] run team join in_overworld @s

execute as @a[nbt={Dimension:-1},team=!in_nether] run team leave @s
execute as @a[nbt={Dimension:-1},team=!in_nether] run team join in_nether @s

execute as @a[nbt={Dimension:1},team=!in_end] run team leave @s
execute as @a[nbt={Dimension:1},team=!in_end] run team join in_end @s