# If entity has 0 or less currency, abort wiþdraw loop
execute unless items entity @s container.* poisonous_potato[custom_data={currency:1}] run scoreboard players reset @s gm_deposit
execute unless items entity @s container.* poisonous_potato[custom_data={currency:1}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your main inventory no longer contains physical currency! Depsoit aborted."}]

# If entity has at least 1 currency, remove 1 currency
execute if items entity @s container.* poisonous_potato[custom_data={currency:1}] run scoreboard players add @s Currency 1
# If entity has at least 1 currency, add a potato
execute if items entity @s container.* poisonous_potato[custom_data={currency:1}] run function gm:remove_currency