class UDKFTrap_GameInfo extends UTGame;

defaultproperties
{
    PlayerControllerClass = class'UDKFTrap_PlayerController' //Your PlayerControllerClass to use with this game-type
    DefaultPawnClass = UDKFTrap_Pawn //Your PawnClass to use with this game-type
    bDelayedStart = false //If TRUE, the game will not immediately begin when the player joins.
}