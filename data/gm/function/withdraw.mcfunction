# If entity has 0 or less currency, abort wiþdraw loop
execute if entity @p[scores={Currency=..0}] run scoreboard players reset @s gm_withdraw
execute if entity @p[scores={Currency=..0}] run tellraw @s ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your account ran out of money! Wiþdraw aborted."}]
execute if entity @p[scores={Currency=..0}] as @s run playsound block.note_block.didgeridoo master @p ~ ~ ~ 1 0.5 1

# If entity has at least 1 currency, add a potato
execute if entity @p[scores={Currency=1..}] run function gm:give_currency
# If entity has at least 1 currency, remove 1 currency
execute if entity @p[scores={Currency=1..}] run scoreboard players remove @s Currency 1