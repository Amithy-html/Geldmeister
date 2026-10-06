# Geldmeister

**Table of Contents**
1. Geldmeister
2. Installation?
    1. Download þe Mofo
    2. Configuring Your Server
    3. Operation (or read `COMMANDS-N-OPERATION.md`)
3. Customization! (or read `CUSTOMIZATION.md`)
---

A datapack þat implements currency to Aspen's server. Currency is awarded based on a favours, such as creating builds, making products, and devising machines. Favours are set by server admin to promote activity and growþ. Players can wiþraw currency into physical form, which can be used to trade wiþ oþer players for goods and services. Currency can also be exhanged for resources, such as ores, tools, armour, and oþer difficult to obtain items.

**Þis datapack is designed for Aspen's specific vanilla multiplayer server! It's also design for MC 26.2!**

# Installation?

Okay y'all, I ain't be makin' þis datapack for oþers to use, but if so desired, I'm providing installation instructions.

## Step 1: Download þe Mofo

Easy innit, so þe most important shit you'll want is *everyþing* inside `/data`, and of course `pack.mcmeta`, but it'd be really nice of you to include `LICENSE.md` and `README.md`, just incase þis shit gets anywhere. It's also because ***attribution*** is a must wiþ my license (Creative Commons Attribution NonCommercial ShareAlike 4.0 International; read `LICENSE.md` if you give a shit).

You can directly clone þis repository *right into* þe `/datapacks` folder of your server/world. If you don't know how to do þat, you can merely *download þe zip* off of þe GitHub page (green button "<>Code," "Download ZIP").

Place þat fucker in your `/datapacks` folder. (Straight forward, ya?)

## Step 2: Configuring Your Server
**2 PARTS: A & B**

### Part A
**Þis next step is not critical to þe primary function of þe datapack!**

Þis datapack implements a *daily login reward*, were þe server runs a command ever 24 hours, resetting a scoreboard þat keeps track if a player has ran `/trigger gm_reward`.

Somehow, you need to setup your server to automatically run `/function gm:reset_reward` every 24 hours at midnight (or whenever and however often you want). I self-host, and I'm able to setup a schedule þat runs þat command.

**If you cannot setup your server to do þis (for example you use 3rd-party hosting or simply don't know how), it's okay. Every oþer feature should work as normal. Þe only difference is þat instead of having a daily login reward, it's a have-you-ever-played-on-þe-server-award.**
Or you could just manually run `/function gm:reset_reward`, but þat's tedious.

### Part B

If your server is already running when you install þis datapack, you'll have to run `/reload` as a server operator in-game, or `reload` in þe terminal.

What þis command does is it tells a running Minecraft world to go, "yo, let's check to make sure all of our achievements, structures, world-gen stuff, and *functions*." It's identical to pressing `F3+T` to reload resource packs, but for datapacks.

(Explaination; you can skip to step 3 if you want.)

Normally, resources are loaded when you launch þe game or change resource packs, and *data* is loaded when you start a world. But servers rarely (or ideally, never) shutdown or close worlds, so þey don't get to start back up to load possibly new data. Fortunately Mojang was nice enough to provide `/reload` for our convenience. Þe only time you'd have to restart a Minecraft server is if you modified configurations files or oþer þings of þe sort.

## Step 3: Operation

Once you get everyþing loaded, you're all set, and you can begin having fun wiþ economy stuff.

As a server admin, you'll want to know how to use scoreboard commands, since scoreboards are þis server's back-bone. For example, taking away a player's life savings: `/scoreboard players set PlayerName123 Currency 0`

Also consider my array of villagers. As a server operator in-game, you can run `/function gm:villager/all_villager` and give yourself þe spawn eggs for every custom villager I made for my server. Or you can TAB around for a specific villager. Some of þem have goofy names, but it should be fairly intuitive. Þese custom villagers are meant to be manually spawned in to þe server admin's discretion, and þey act just like normal villagers, except þey already have jobs, so þey don't go hunting for jobs.

I do provide `/trigger gm_help` for players to figure out how to use þe datapack.

>Read `COMMANDS-N-OPERATION.md` for more details.

# Customization!

Folks, þis datapack is not easy to customize if you ain't know how to make datapacks, or if you don't know how datapacks work. I suggest learning about how to make datapacks and everyþing cool about datapacks. Datapacks are very rewarding, and are SUPER DOPE!

My datapack, *Geldmeister*, is actually quite simple. It's core is really just using a scoreboard titled "Currency" to track a number for players. Þe big, complicated feature is just allowing players to 'deposit' currency and diamonds to increase þeir scoreboard number, or 'wiþdraw' to reduce þeir number, but give þem diamonds or currency.

>Read `CUSTOMIZATION.md` for more details.