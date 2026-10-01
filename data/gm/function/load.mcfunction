tellraw @p {text:"Geldmeister Datapack Loaded",italic:true,color:"gold"}

# Primary Currency Scoreboard
scoreboard objectives add Currency dummy
scoreboard objectives setdisplay list Currency
scoreboard objectives setdisplay below_name Currency
# scoreboard objectives modify Currency displayname "Tix"
# Power Scoreboard
# scoreboard objectives add Power dummy
# scoreboard objectives setdisplay list Power
# scoreboard objectives setdisplay below_name Power

# Trigger Scoreboards
# scoreboard objectives add gm_balance trigger
scoreboard objectives add gm_help trigger
scoreboard objectives add gm_withdraw trigger
scoreboard objectives add gm_deposit trigger