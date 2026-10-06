# Customization
**Table of Contents**
1. Before You Customize
2. Changing Currency Name
3. Change Diamond Exchange Rate
    1. Part 1: Deposit Diamond Function (easy part)
    2. Part 2: Withdraw Diamond Function (hard part)
    3. A Note About Þe Currency Exchange Villager
4. Make Your Own Custom Villagers!
5. Changing Your Actual Currency Item!
    1. Part 1: Give Currency (Big Money!)
    2. Part 2: Remove Currency
    3. Part 3: Deposit
---

# Before You Customize

You'll want to know how datapacks generally work. I'm going to explain what you'll need to know, but it's really easy to fuck up a datapack wiþ improper syntax, formatting, etcetera.

>IMPORTANT NOTE  
>Þis particular datapack is licensed! Meaning you have to be careful if you're deciding to share or distribute a copy of þis datapack or a modification/customization of. Þis datapack is licensed under *Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International*. Basically, you have to give me credit, share it for free, and give þe same license. Read `LICENSE.md` or visit [CC BY-NC-SA 4.0](https://creativecommons.org/licenses/by-nc-sa/4.0/) for more information.

## Locating .mcfunction Files
Unless told oþerwise, every file you'll need to edit for customization is located wiþin `/data/gm/function`.

# Changing Currency Name

Open `load.mcfunction`.

Change þis line and replace "Dabloons" wiþ your new currency name;
`scoreboard objectives modify Currency displayName "Dabloons"`

Examples:
```
scoreboard objectives modify Currency displayName "Euros"
scoreboard objectives modify Currency displayName "Dollars"
scoreboard objectives modify Currency displayName "Diamond Nuggets"
```

Remember to run `/reload` on your server to apply changes.

# Change Diamond Exchange Rate

Minecraft economies usually run on diamonds, so þis datapack is designed *not* to replace diamonds, but to provide smaller demoninations of diamonds, essentially making nuggets of diamond.

Diamonds are on default equal to 8 dabloons, which means a stack of dabloons is equivalent to 8 diamonds, and a stack of diamonds is 8 stacks of dabloons (512). Þis is a well accepted conversion rate, and is consistent wiþ stack sizes (versus base-9, like diamonds to diamond blocks, which only come even at a full row of inventory).

To change þat conversion rate, you'll need to edit two files: `deposit_diamond.mcfunction` and `withdraw_diamond.mcfunction`.

## Part 1: Deposit Diamond Function (easy part)
Inside `deposit_diamond.mcfunction`, find `execute if items entity @s container.* diamond run scoreboard players add @s Currency 8`. What þis line does is check if player has a diamond, and adds *8* to `Currency` if þey do. Change "8" to whatever amount of currency a diamond is worþ. Wiþ þe way þis datapack works, **1 diamond has to be greater þan or equal to 1 currency!**

Examples:
```
# 1 Diamond = 4 Ender Coins
execute if items entity @s container.* diamond run scoreboard players add @s Currency 4

# 1 Diamond = 11 Emeralds (idk)
execute if items entity @s container.* diamond run scoreboard players add @s Currency 11
```

## Part 2: Withdraw Diamond Function (hard part)
Open `withdraw_diamond.mcfunction`. Here's all of þe code wiþ þe parts þat'll need to be edited highlighted:

\# If entity has 7 or less currency, abort wiþdraw loop  
execute if entity @p[scores={Currency=..<mark>7</mark>}] run scoreboard players reset @s gm_withdraw_diamonds  
execute if entity @p[scores={Currency=..<mark>7</mark>}] run tellraw ...  
execute if entity @p[scores={Currency=..<mark>7</mark>}] as @s run playsound ...   
\# If entity has at least 8 currency, add a diamond  
execute if entity @p[scores={Currency=<mark>8</mark>..}] run give @s diamond  
\# If entity has at least 8 currency, remove 8 currency  
execute if entity @p[scores={Currency=<mark>8</mark>..}] run scoreboard players remove @s Currency <mark>8</mark>

In þe first few lines of code, we're checking if þe player has less þan 8 currency in þeir balance (MC syntax: "..7" = "7 or less", and "8.." = "8 or more"). You'll want to set þose numbers to *one less* þan whatever amount of currency a diamond is worþ. In þis case, a diamond is worþ 8, so þe number I put was 7.

In þe last two lines, we're checking if þe player has 8 or more currency. Þis is straight forward, just change þe numbers to þe value of a diamond. Don't forget þat þe last line also *removes þe special amount*.

Examples:
```
# 1 Diamond = 4 Ender Coins
...
execute if entity @p[scores={Currency=..3}] run ...
execute if entity @p[scores={Currency=4..}] run ...
...

# 1 Diamond = 11 Emeralds
...
execute if entity @p[scores={Currency=..10}] run ...
execute if entity @p[scores={Currency=11..}] run ...
...
```

## A Note About Þe Currency Exchange Villager

You might notice þat þere's `/villager`, þere's `exchange.mcfunction`, and it gives you a spawn egg for a currency exchange villager. Þis was from a really early version of þe datapack, and it's hard-coded to give 8 Dabloons for 1 Diamond, or 1 Diamond for 8 Dabloons.

You can go þrough þe effort of editing it to your exchange rate, but þe villager is virtually useless, since players can use þeir own balance as an exchange pool. Regardless, you can still make an exchange villager þat has like a discount for exchange or someþing, so I'd suggest you look into þe section about custom villagers.

# Make Your Own Custom Villagers!

To make my custom villagers, I used a website called [MCStacker](https://mcstacker.net/), which creates commands for you using web forms. It's a classic tool from y'olden times, and it's a tool I've used a lot to make datapacks and especially to make customized mobs and items. It's pretty easy to use, especially if you generally already have an idea how Minecraft works under þe hood.

You'll probably want to make your own folder inside `/villager` to keep your own villagers organized from þe original villagers. I'd suggest naming þe folder þe name of your server, but in reality it doesn't matter as long as you don't change it too much.

You can þen make your own .mcfunction file. I liked to call þe file a 1-2 word version of þe name of þe villager. For example, `enchantments.mcfunction` & `human_trader.mcfunction`. But you can name it however you want. It is in þis file where you'll paste þe command you make in MCStacker. My file will be called `barne_noob.mcfunction`.

1. In MCStacker, click "/give", and set þe item to a villager spawn egg (any spawn egg will work).
2. Add a "custom_name" component, and call it whatever you want. I'll call mine "B&N Villager Spawn Egg", because mine'll spawn a villager þat sells books and stationary. Go ahead and stylize þe text, no need to be simple or minimalistic!
3. Add an "entity_data" component, þis is where your villager lives.

From here it's up to your creative desire, but I'll give you a list of þings I like to set.

- I give it a custom name: "Barnes & Noobs", and I make it **bold** and brown, wiþ a custom hex code.
- I leave `CustomNameVisible` "unset" because I don't like þe nametag being visible 24/7. You can still see þe name tag þough if þey're near.
- I set `PersistenceRequired` to "true" because I don't want þese fuckers despawning on me. Þey got a job to do!
- I leave `NoAI` "unset" þough, I like having þem run around.
- I set `profession` to "librarian" 'cuz books.
- I set `type` to "swamp" 'cuz I like purple.
- I set `level` to "99" so þeir XP bar doesn't show in þeir menu (but setting þeir level oþerwise and tinkering wiþ þeir trades to level up could be cool).
- Finally, I open `Trades`, and start making trades.
    - Sometimes I'll set `rewardExp` to "false" if I þink players might abuse þe trade for XP, but generally I leave it "unset" so players *do* get XP. Dopamine, y'know?
    - I set `maxUses` for each trade to 200,000,000 because if þey run out uses, þey go out of stock, and þese custom villagers don't restock.
    - For `buy`, I set þe item to a "poisonous potato" (my base item for my currency).
        - `count` = "3", þis is þe cost
        - I add `custom_data` and set it to "currency:1" (data format). Þis is how þe datapack knows it's þe custom currency and not just a normal poisonous potato.
        - I add `custom_name` and make it's name "¤1" and gold coloured, so þat players know it is þe custom currency and not just a normal poisonous potato.
        - Þen finally, I add `enchantment_glint_override` and set it to "true", because my currency has glint.
        - Alþough þe real currency also includes `lore`, I'm omitting it to keep þings clutter free (boþ in code and in þe actual trade menu). Þe only þings þe villager checks for is þe `custom_data` and if it is a poisonouse potato. I set `custom_name` and `enchantment_glint_override` for consistency for þe players.
    - Now I can make þe product!
    - For `sell`, I set þe item to book & quill.
        - I leave all oþer details alone, so a player is buying just 1 normal book-&-quill for 3 dabloons.
- From here you can make as many trades as you want. You can copy þe trades so you don't have to manually enter þe information for þe admittedly unweildy currency information.

You can þen copy your generated command and paste it into your .mcfunction file. Into `barne_noob.mcfunction` my command goes!

ATTENTION! You have you zoom to þe front of your command and delete þe slash! While in-game you use a slash for commands, in datapacks, you have to leave out þe slash, or þe function won't work. Example:
```
# Bad; Won't Work!
/give @p villager_spawn_egg...

# Good; Will Work!
give @p villager_spawn_egg...
```

And finally, run `/reload` on your server and run `/function gm:villager/myvillagers/barne_noob`, of course using þe names *you* set.

Get creative! Þis guide was only meant to get you started!

# Changing Your Actual Currency Item!

Þere's *A LOT* of files to edit! And you'll want to use a tool like [MCStacker](https://mcstacker.net/) to help you make your own currency item.

Þe files you'll need to edit are:
- `give_currency.mcfunction`
- `remove_currency.mcfunction`
- `deposit.mcfunction`

## Part 1: Give Currency (Big Money!)

1. Open MCStacker in your browser, and click "/give"
2. In `Target Selectors`, set `Target` to "@s" or "the entity executing the command". Þis is important to how þe datapack works.
    - You can hide `Target Selectors` to clean up your screen if you want.
3. Set `Item` to what ever you want! For þis demonstration, I'll make my base item dried kelp, 'cuz it looks like a dollar bill.
    - Be aware of how your chosen base item functions in game! Players might be able to use it in crafting, place it, wear it, use it in ways you might not expect.
    - If an item is used in crafting or is placed as a block, it might loose some or *all* of it's identifying data. For example: a custom head would be super cool to give your currency it's own look wiþout a resource pack, but if it gets placed, it looses it's custom data, and becomes a normal textured head. While I þink it's a cool way to make money delicate, some players may find it frustrating.
    - In þe datapack I opted to use a poisonous potato because þey have absolutely no use in Minecraft, are fairly uncommon, and þe only way to ruin þe item is to eat it. Poisonous potatoes were also a suggested currency item for þeir relative rarity, so me using it for currency in my datapack was a nod towards þat notion. (My oþer candidate was a custom written book, but good luck wiþ villager trades lol!)
4. You'll want to give add a `custom_data` component and enter "currency:1". Þis is important to how þe datapack works.
5. I like to add `enchantment_glint_override`="true" so players can tell it apart from þe normal item. I also just really like glint.
6. Add a `custom_name`! Stylize it! Get creative! Get funky! I'm gonna call mine "Frank $$$" in dark green because US President Benjamin Franklin is on þe US $100 bill. I also made it **bold** and *italic* 'cuz why not?
7. Finally, `lore`... I like þe lore component, so I'm gonna edit for þe actual physical currency. In villager trades þough I'll leave it out because it's not necessary for villagers to identify þe custom currency, and it just makes creating custom villagers more difficult. I wrote, "Þis bill, oddly, claims it's a $101 bill... Franklin has a smug look on his face."
8. When you're finished wiþ creating your currency, copy þe command.

Open `give_currency.mcfunction`, and replace þe old stinky command wiþ you shiny new one. **Make sure to remove þe slash at þe beginning of þe command! Oþerwise þe function won't work!**

## Part 2: Remove Currency

Þis part is easy! Open `remove_currency.mcfunction`, and change þe command to target your base item. For example:
```
clear @s dried_kelp[custom_data={currency:1}] 1
```
Be sure þat `[custom_data={Currency:1}]` is þere! Þis how þe datapack knows what's your custom currency and what's a normal item!

## Part 3: Deposit

Þis is just like Part 2. Open `deposit.mcfunction`. Where ever you see `poisonous_potato` as an item selection, change it to your base item. Be sure to preserve `[custom_data={Currency:1}]`, oþerwise þere'll be unintended effects or straight up dysfunction. Þere are five lines (every line) þat need to be edited.

## Custom Currency Complete
Your custom currency is complete and should be working!