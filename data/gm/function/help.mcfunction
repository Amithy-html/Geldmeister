# Displays All Options Available To Players

# HEADER
tellraw @p ["",{text:"==== ",color:"gold"},{text:"Geldmeister ",bold:true,color:"dark_green"},{text:"Currency Options & Functions ====",color:"gold"}]

tellraw @p ["",{text:"/trigger gm_balance",color:"blue"},{text:" - Display your current balance in þe chat. Also establishes your account if you don't have one already."}]
tellraw @p ["",{text:"/trigger gm_withdraw set #",color:"blue"},{text:" - Wiþdraw physical currency. Good for physical trades, cash prizes, etcetera."}]

# FOOTER
tellraw @p {text:"==== ====",color:"gold"}