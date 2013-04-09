class UDKFTrap_Pawn extends UTPawn;



//ACTIVE SKILLS
simulated function ActivateTrap(UTPlayerController PC, Vector Position){
    local UDKFTrap_Trap   Trap;
    `log("Activating trap spawned by client!");
    
    Trap = Spawn(class'UDKFTrap_Trap', PC,,Position);
    Trap.trapOwner = PC;
    
    if(Role < Role_Authority)
    {
         ServerActivateTrap(PC, Position);
    }
}

reliable server function ServerActivateTrap(UTPlayerController PC, Vector Position){
    local UDKFTrap_Trap   Trap;
    local UDKFTrap_Pawn UTP;
    `log("Activating trap on Server!");
    
    
    Trap = Spawn(class'UDKFTrap_Trap', PC,,Position);
    Trap.trapOwner = PC;
    
    //SPAWN TRAP FOR EVERY PAWN / THATS NOT HOW IT SHOULD BE DONE I THINK!
    foreach WorldInfo.AllPawns(class'UDKFTrap_Pawn', UTP)
    {
        `log("Activating trap from Server on client!");
        if (UTP.PlayerReplicationInfo != PC.PlayerReplicationInfo)
        {
            UTP.ClientActivateTrap(PC, Position);
        }
    }
}

reliable client function ClientActivateTrap(UTPlayerController PC, Vector Position){
    local UDKFTrap_Trap   Trap;
    `log("Activating client trap!");
    
    Trap = Spawn(class'UDKFTrap_Trap', PC,,Position);
    Trap.trapOwner = PC;
}


defaultproperties
{
}