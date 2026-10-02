# Change player's gm_claim_reward by 1, check to see if þeir score IS 1. If so, give reward
say yeah
scoreboard players add @p gm_claim_reward 1

# If player can indeed claim reward:
execute if entity @p[scores={gm_claim_reward=1}] run scoreboard players add @s Currency 8
execute if entity @p[scores={gm_claim_reward=1}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"Daily login reward "},{text:"¤8",color:"gold"},{text:"! "},{text:"\"A diamond a day keeps þe poorly appareled porky poor people away!\"",italic:true,color:"gray"}]
execute if entity @p[scores={gm_claim_reward=1}] as @s run playsound block.note_block.chime master @p ~ ~ ~ 1 1 1

# If player cannot claim reward:
execute unless entity @p[scores={gm_claim_reward=1}] run tellraw @p ["",{text:"Geldmeister: ",color:"dark_green"},{text:"You cannot claim daily login reward right now."}]
execute unless entity @p[scores={gm_claim_reward=1}] as @s run playsound block.note_block.hat master @p ~ ~ ~ 1 0.75 1