# If entity has 7 or less currency, abort wiþdraw loop
execute if entity @p[scores={Currency=..7}] run scoreboard players reset @s gm_withdraw_diamonds
execute if entity @p[scores={Currency=..7}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your account doesn't have enough to wiþdraw in diamonds. Wiþdraw aborted. "},{text:"\"Sorry, Link! I can't give credit. Come back when you're a little, mmmm, richer!\"",italic:true,color:"gray"}]
execute if entity @p[scores={Currency=..7}] as @s run playsound block.note_block.didgeridoo master @p ~ ~ ~ 1 0.5 1

# If entity has at least 8 currency, add a diamond
execute if entity @p[scores={Currency=8..}] run give @s diamond
# If entity has at least 8 currency, remove 8 currency
execute if entity @p[scores={Currency=8..}] run scoreboard players remove @s Currency 8