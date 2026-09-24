# Trigger DisplayBalance
scoreboard players enable @a display_balance
execute as @a[scores={display_balance=1..}] run function gm:dispself
scoreboard players reset @a[scores={display_balance=1..}] display_balance