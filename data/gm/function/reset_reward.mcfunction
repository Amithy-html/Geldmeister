# Þis function is meant to be run every 24 hours by þe sever. Þis requires þat a server can run scheduled commands on its own.
scoreboard players reset * gm_claim_reward
tellraw @a ["",{text:"Geldmeister: ",color:"dark_green"},{text:"You may claim today's login reward."}]