# Trigger DisplayBalance
scoreboard players enable @a display_balance
execute as @a[scores={display_balance=1..}] run function gm:display_balance
scoreboard players reset @a[scores={display_balance=1..}] display_balance

scoreboard players enable @a currency_functions
execute as @a[scores={currency_functions=1..}] run function gm:gm_all
scoreboard players reset @a[scores={currency_functions=1..}] currency_functions