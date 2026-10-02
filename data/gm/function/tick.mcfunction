# Trigger Balance
scoreboard players enable @a gm_balance
execute as @a[scores={gm_balance=1..}] run function gm:display_balance
scoreboard players set @a[scores={gm_balance=1..}] gm_balance 0

# Trigger Help
scoreboard players enable @a gm_help
execute as @a[scores={gm_help=1..}] run function gm:help
scoreboard players set @a[scores={gm_help=1..}] gm_help 0

# Trigger Wiþdraw
scoreboard players enable @a gm_withdraw
execute as @a[scores={gm_withdraw=1..}] run function gm:withdraw
scoreboard players remove @a[scores={gm_withdraw=1..}] gm_withdraw 1

# Trigger Deposit
scoreboard players enable @a gm_deposit
execute as @a[scores={gm_deposit=1..}] run function gm:deposit
scoreboard players remove @a[scores={gm_deposit=1..}] gm_deposit 1

# Trigger Reward (Daily Rewards)
scoreboard players enable @a gm_reward
execute as @a[scores={gm_reward=1..}] run function gm:reward
scoreboard players set @a[scores={gm_reward=1..}] gm_reward 0