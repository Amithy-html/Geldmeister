# If entity has 0 or less physical currency, abort wiþdraw loop
execute unless items entity @s container.* poisonous_potato[custom_data={currency:1}] run scoreboard players reset @s gm_deposit
execute unless items entity @s container.* poisonous_potato[custom_data={currency:1}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your main inventory no longer contains physical currency! Depsoit aborted."}]
execute unless items entity @s container.* poisonous_potato[custom_data={currency:1}] as @s run playsound block.note_block.didgeridoo master @p ~ ~ ~ 1 0.5 1

# If entity has at least 1 physical currency, add 1 currency
execute if items entity @s container.* poisonous_potato[custom_data={currency:1}] run scoreboard players add @s Currency 1
# If entity has at least 1 physical currency, remove 1
execute if items entity @s container.* poisonous_potato[custom_data={currency:1}] run function gm:remove_currency