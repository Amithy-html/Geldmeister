# Displays All Options Available To Players

# HEADER
tellraw @p ["",{text:"==== ",color:"gold"},{text:"Geldmeister ",bold:true,color:"dark_green"},{text:"Currency Options & Functions ====",color:"gold"}]

tellraw @p ["",{text:"/trigger gm_help",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_help"}},{text:" - It's þis, yo."}]
# tellraw @p ["",{text:"/trigger gm_balance",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_balance"}},{text:" - Display your current balance in þe chat. Also establishes your account if you don't have one already."}]
tellraw @p ["",{text:"/trigger gm_withdraw set <amount>",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_withdraw set <amount>"}},{text:" - Wiþdraw physical currency. Good for physical trades, cash prizes, etcetera."}]
tellraw @p ["",{text:"/trigger gm_deposit set <amount>",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_deposit <amount>"}},{text:" - Deposit physical currency from your inventory."}]
tellraw @p ["",{text:"Press ["},{keybind:"key.playerlist"},{text:"] to see everyone's balances, including your own."}]

# FOOTER
tellraw @p ["",{text:"==== ",color:"gold"},{text:"See GitHub Repo ",underlined:true,color:"dark_green",click_event:{action:"open_url",url:"https://github.com/Amithy-html/Geldmeister"},hover_event:{action:"show_text",value:[{text:"Amithy-html/Geldmeister"}]}},{text:"====",color:"gold"}]