class UDKFTrap_PlayerController extends UTPlayerController;

exec function SpawnTrap(){
    local Actor HitActor;
    local Vector HitLoc, HitNorm;
    local Vector Start, End;
    
    Start = self.Pawn.Location;
    End = Start + vector(self.Rotation) * 1000;
    
    HitActor = Trace(HitLoc,HitNorm, End, Start,true);
    
    if(HitActor != none){
        ServerSpawnTrap(self, HitLoc);
    }   
}

reliable server function ServerSpawnTrap(UTPlayerController PC, Vector Position){
    `log("Activating trap on server!");
    Spawn(class'UDKFTrap_Trap', PC,,Position);
}