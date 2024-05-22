function dim_status:remove_deprecated


team add pawek.ds.in_overworld {"text":"OVERWORLD","color":"dark_green"}
team add pawek.ds.in_nether {"text":"NETHER","color":"dark_red"}
team add pawek.ds.in_end {"text":"END","color":"yellow"}
team modify pawek.ds.in_overworld seeFriendlyInvisibles false
team modify pawek.ds.in_nether seeFriendlyInvisibles false
team modify pawek.ds.in_end seeFriendlyInvisibles false
team modify pawek.ds.in_overworld color dark_green
team modify pawek.ds.in_nether color dark_red
team modify pawek.ds.in_end color yellow

scoreboard objectives add pawek.ds.optout trigger {"text":"Opt out of dimension tracking","color":"gold"}
execute unless score pawek.ds.check pawek.ds.optout matches 0..1 run scoreboard players set pawek.ds.check pawek.ds.optout 0
