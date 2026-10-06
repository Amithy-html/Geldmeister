tellraw @a ["",{text:"Geldmeister ",italic:true,color:"dark_green"},{text:"Datapack Loaded",italic:true,color:"gold"}]

# Primary Currency Scoreboard
scoreboard objectives add Currency dummy
scoreboard objectives setdisplay list Currency
scoreboard objectives modify Currency displayname "Dabloons"
# Power Scoreboard
# scoreboard objectives add Power dummy
# scoreboard objectives setdisplay list Power
# scoreboard objectives setdisplay below_name Power

# Tracks if players have claimed reward or not
scoreboard objectives add gm_claim_reward dummy

# Trigger Scoreboards
scoreboard objectives add gm_balance trigger
scoreboard objectives add gm_help trigger
scoreboard objectives add gm_withdraw trigger
scoreboard objectives add gm_deposit trigger
scoreboard objectives add gm_reward trigger
scoreboard objectives add gm_withdraw_diamonds trigger
scoreboard objectives add gm_deposit_diamonds trigger