# If entity has 0 or less diamonds, abort deposit loop
execute unless items entity @s container.* diamond run scoreboard players reset @s gm_deposit_diamonds
execute unless items entity @s container.* diamond run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your main inventory no longer contains diamonds! Depsoit aborted."}]
execute unless items entity @s container.* diamond as @s run playsound block.note_block.didgeridoo master @p ~ ~ ~ 1 0.5 1

# If entity has at least 1 diamond, add 8 diams
execute if items entity @s container.* diamond run scoreboard players add @s Currency 8
# If entity has at least 1 diamond, remove a diamond
execute if items entity @s container.* diamond run clear @s diamond 1