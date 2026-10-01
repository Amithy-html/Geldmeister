# Trigger Balance
scoreboard players enable @a gm_balance
execute as @a[scores={gm_balance=1..}] run function gm:display_balance
scoreboard players reset @a[scores={gm_balance=1..}] gm_balance

# Trigger Help
# scoreboard players enable @a gm_help
# execute as @a[scores={gm_help=1..}] run function gm:help
# scoreboard players reset @a[scores={gm_help=1..}] gm_help

# Trigger Wiþdraw
scoreboard players enable @a gm_withdraw
execute as @a[scores={gm_withdraw=1..}] run function gm:withdraw
scoreboard players remove @a[scores={gm_withdraw=1..}] gm_withdraw 1

# Trigger Deposit
scoreboard players enable @a gm_deposit
execute as @a[scores={gm_deposit=1..}] run function gm:deposit
scoreboard players remove @a[scores={gm_deposit=1..}] gm_deposit 1