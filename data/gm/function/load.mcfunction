tellraw @p {text:"Geldmeister Datapack Loaded",italic:true,color:"gold"}

# Primary Currency Scoreboard
scoreboard objectives add Currency dummy
scoreboard objectives setdisplay list Currency
scoreboard objectives setdisplay below_name Currency
scoreboard objectives modify Currency displayname "Tix"

# Trigger Scoreboards
scoreboard objectives add gm_balance trigger
scoreboard objectives add gm_help trigger