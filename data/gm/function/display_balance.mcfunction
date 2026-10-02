# Add 0, So Player Has Entry
scoreboard players add @p Currency 0
# scoreboard players add @s Power 0

# If Player Has Non-Zero Amount of Currency
execute unless entity @p[scores={Currency=0}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your current balance is ¤"},{score:{name:"@s",objective:"Currency"},bold:true,color:"gold"}]
# If Player Has Zero Currency
execute if entity @p[scores={Currency=0}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"You have no money."}]
# If Player Has Negative Currency
execute if entity @p[scores={Currency=..-1}] run tellraw @p ["",{text:"Geldmeister CAUTION: ",color:"gold"},{text:"Your balance is "},{text:"negative!",italic:true,underlined:true}]

# Display Power
# tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Your power is "},{score:{name:"@s",objective:"Power"},bold:true,color:"gold"}]