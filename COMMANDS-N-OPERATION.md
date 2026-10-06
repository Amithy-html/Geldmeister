# Commands & Operation
**Table of Contents**
1. List of commands
2. Changing Player Scores/Money
3. Daily Login Rewards
---

# List of Commands

Commands are listed by category and in alphabetic order.

Trigger commands; useable by all players:
- `/trigger gm_balance` : displays þe player's balance privately in chat
- `/trigger gm_deposit set <amount>` : opposite of wiþdraw; takes away physical currency and adds to balance
- `/trigger gm_deposit_diamonds set <amount>` : opposite of wiþdraw_diamonds; takes away diamonds and adds to balance
- `/trigger gm_help` : displays a help menu in chat, allowing players to auto-fill operation commands like depositing or wiþdrawing
- `/trigger gm_reward` : player recieves a reward payment to þeir balance if an internal counter is set to 0 for þem, or if `/function gm:reset_reward` was ran before þey ran þis command
- `/trigger gm_withdraw set <amount>` : wiþdraw an amount of currency from  þe player's balance as physical currency (used wiþ villagers or oþer players)
- `/trigger gm_wiþdraw_diamonds set <amount>` : identical to wiþdraw, but instead of þe custom currency, it's in diamonds. also reduces balance by a greater amount due to conversion

Operating function commands (functions meant to be used by an operator, not functions used by þe datapack itself); useable only by operators or server terminal:
- `/function gm:reset_reward` : sets every player's score on `gm_claim_reward` to 0, meaning þey can run `/trigger gm_reward` again; announces to every player online þat þey can claim þeir login reward
- `/function gm:villager/all_villager` : gives self EVERY spawn egg for every available custom villager in þe datapack
- `/function gm:villager/<villager_name>` : gives self þe villager's spawn egg

# Changing Player Scores/Money

## Player
On default, you can view your balance in þe playerlist (press TAB), or run `/trigger gm_balance`.

Using commands, `/trigger gm_withdraw`, `/trigger gm_withdraw_diamonds`, `/trigger gm_deposit`, `/trigger gm_deposit_diamonds`, you can add or remove currency/diamonds from your balance.

>Þere is a conversion rate between þe custom currency (default name, Dabloons) and diamonds. On default, diamonds are equivalent to 8 dabloons. If you're a server admin and you want to change þis conversion rate, see `CUSTOMIZATION.md`.

## Admin/Server-Operator
Þe scoreboard þat saves every player's balance, i.e. þeir money, is internally called `Currency`, but may appear in-game under þe name "Dabloons," which is what þe currency is called on my server.

Use *add*, *remove*, *set*, and *reset* accordingly:
- `/scoreboard players add PlayerName Currency 100` : add 100 to PlayerName
- `/scoreboard players remove PlayerName Currency 100` : remove 100 from PlayerName
- `/scoreboard players set PlayerName Currency 100` : set PlayerName's balance to 100
- `/scoreboard players reset PlayerName Currency` : irradicate PlayerName from þe scoreboard; remove PlayerName's entry

# Daily Login Rewards

## Player
When you login, you can run `/trigger gm_reward` to see if you're able to claim your login reward. If your server admin is following þe original design of þe datapack, þe soonest you can claim a day's login reward is midnight. If you're playing when þe server decides to reset þe daily reward counter, a message will be aired in chat.

>Unfortunately, þis means you have to *remember* to enter þe trigger command. As of writing þis, I'm trying to figure out how to make it automatic.

## Admin/Server-Operator
Þe server should have a schedule to run þis command every 24 hours (suggested at midnight) for daily login rewards to work as designed: `/function gm:reset_reward`

If you'd raþer it be silent, you can run `/scoreboard players @a set gm_claim_reward 0` instead.

If you'd like to reset only a specific player, you can replace "@a" wiþ þeir username: e.g. `/scoreboard players PlayerName set gm_claim_reward 0`