# UDKF-Trap

This repository shall demonstrate how to implement a trap which works in multiplayer and is spawned by the player via unreal script.

Here are the details which we are are trying to achieve:

* player can spawn a trap that deals dmg to other players or himself
* trap can be configured to deal damage to enemy players only
* trap is fully functionally in multiplayer even when someone rejoins the server
* trap spawn has a cooldown
* traps disappear after a cooldown
* traps do not stack damage

## What do I need to get this working?

### Getting started

To get started you need a basic udk installation with all ut3 packages! You can download UDK here: [http://www.unrealengine.com/udk/downloads/](http://www.unrealengine.com/udk/downloads/)
February 2013 UDK Beta was used.

Now that you have installed UDK you will find following folders in it:

* Binaries – This contains the game exe, the UnrealFrontEnd, and any additional programs. You are not suppose to modify this folder for your game (small exceptions here and there aside).
* Development – This contains the source code for your Unrealscript files. Very important directory. The game will take the source code (uc files) found in this directory and compile the U files (compiled code libraries) from these.
* Engine – These are files required by the engine. These files should not be touched unless you got a very good reason!
* UDKGame – These are all the files for your game. You will do most of the work in this directory.

List of directorys taken from:  [http://www.hourences.com/an-entire-simple-udk-game/](http://www.hourences.com/an-entire-simple-udk-game/)

### Use code from this Repository

Add line 3 below the other ones to your *DefaultEngine.ini* in *UDKGame/Config*:

	[UnrealEd.EditorEngine]
	...
	+EditPackages=UDKF_Trap

This will load our custom package. *Pay attantion* the order is very important because it determines in what order it will load and compile. We need UTGame and UTGameContent to be loaded before our package!

Also add line 3 below to DefaultGame.ini found in the same folder:

	[Configuration]
	...
	+DefaultMapPrefixes=(Prefix="UDKFTrap",bUsesCommonPackage=FALSE,GameType="UDKF_Trap.UDKFTrap_GameInfo")

This will make sure when we load a Map with the prefix UDKFTrap (e.g. UDKFTrap-Playground.udk) the correct GameInfo will be loaded.

### Test what you have just done

I included 2 bat files:

* LOCAL CLIENT
* LOCAL SERVER

With the LOCAL SERVER a dedicated server will be started. With LOCAL CLIENT a client will join the server. You can even start two clients or more to test if everything is working.
To Spawn a Trap fire up the console and type SpawnTrap with the MousePointer headed to the position you want the Trap to appear.

### Questions and Feedback

Please visit my block. I will always answer you there: [http://diesistmein.name/?p=139](http://diesistmein.name/?p=139)

### Code you have to share

If you know how to do this better please go to my block [http://diesistmein.name/?p=139](http://diesistmein.name/?p=139) and post you solution or even better do a pull request.