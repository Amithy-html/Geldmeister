# Displays All Options Available To Players

# HEADER
tellraw @s ["",{text:"==== ",color:"gold"},{text:"Geldmeister ",bold:true,color:"dark_green"},{text:"Currency Options & Functions ====",color:"gold"}]

# Reward
tellraw @s {text:"[$$$ Login Reward $$$]   ",color:"light_purple",click_event:{action:"suggest_command",command:"/trigger gm_reward"},hover_event:{action:"show_text",value:[{text:"Every 24 hours, starting at midnight, your allowed to claim "},{text:"¤8, ",italic:true,color:"gold"},{text:"equivalent to "},{text:"1 diamond",italic:true,color:"aqua"},{text:"!"}]}}
# Help & Balance
tellraw @s ["",{text:"[Help]   ",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_help"},hover_event:{action:"show_text",value:[{text:"Shows þis help menu. Click on options to suggest trigger commands."}]}},{text:"[Balance]   ",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_balance"},hover_event:{action:"show_text",value:[{text:"Print in chat your balance. Aspen may or may not have fixed an issue where it ran þis function for a different player depending on your location in þe world..."}]}},{text:"[Easy Balance Check]",color:"dark_aqua",hover_event:{action:"show_text",value:[{text:"Simply pressing "},{keybind:"key.playerlist",color:"blue"},{text:" can present your balance and þe balance of oþer online players. You can also witness players' balances "},{text:"under þeir name tags.",color:"blue"}]}}]
# Wiþdraw
tellraw @s ["",{text:"[Wiþdraw]   ",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_withdraw set <amount>"},hover_event:{action:"show_text",value:[{text:"Wiþdraw from your balance an amount of dabloons."}]}},{text:"[Wiþdraw in Diamonds]",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_withdraw_diamonds set <amount>"},hover_event:{action:"show_text",value:[{text:"Immediately convert dabloons in your balance to diamonds and wiþdraw."}]}}]
# Deposit
tellraw @s ["",{text:"[Deposit]   ",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_deposit set <amount>"},hover_event:{action:"show_text",value:[{text:"Deposit into your balance an amount of dabloons."}]}},{text:"[Deposit in Diamonds]",color:"blue",click_event:{action:"suggest_command",command:"/trigger gm_deposit_diamonds set <amount>"},hover_event:{action:"show_text",value:[{text:"Directly deposit diamonds into your balance. Converts to dabloons."}]}}]

# FOOTER
tellraw @s ["",{text:"==== ",color:"gold"},{text:"See GitHub Repo ",underlined:true,color:"dark_green",click_event:{action:"open_url",url:"https://github.com/Amithy-html/Geldmeister"},hover_event:{action:"show_text",value:[{text:"Amithy-html/Geldmeister"}]}},{text:"====",color:"gold"}]