# Displays All Options Available To Players

# HEADER
tellraw @p ["",{text:"==== ",color:"gold"},{text:"Geldmeister ",bold:true,color:"dark_green"},{text:"Currency Options & Functions ====",color:"gold"}]

# BALANCE button
tellraw @p {text:"[ Balance ]",color:"blue",click_event:{action:"run_command",command:"function gm:display_balance"},hover_event:{action:"show_text",value:[{text:"Show your own balance. In case oþer displays don't work. Or use: "},{text:"/trigger gm_balance",color:"gold"}]}}

# WIÞDRAW button
tellraw @p {text:"[ Wiþdraw ]",strikethrough:true,color:"dark_gray",hover_event:{action:"show_text",value:[{text:"Or use: "},{text:"/trigger gm_withdraw set #",color:"gold"}]}}

# FOOTER
tellraw @p {text:"==== ====",color:"gold"}