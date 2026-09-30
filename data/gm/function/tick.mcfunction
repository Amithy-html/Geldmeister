# Trigger DisplayBalance
scoreboard players enable @a gm_balance
execute as @a[scores={gm_balance=1..}] run function gm:display_balance
scoreboard players reset @a[scores={gm_balance=1..}] gm_balance

scoreboard players enable @a gm_help
execute as @a[scores={gm_help=1..}] run function gm:help
scoreboard players reset @a[scores={gm_help=1..}] gm_help