class UDKFTrap_PlayerController extends UTPlayerController;


exec function SpawnTrap(){
    local Actor HitActor;
    local Vector HitLoc, HitNorm;
    local Vector Start, End;
    
    
    Start = self.Pawn.Location;
    End = Start + vector(self.Rotation) * 1000;
    
    HitActor = Trace(HitLoc,HitNorm, End, Start,true);
    
    if(HitActor != none){
        UDKFTrap_Pawn(Pawn).ActivateTrap(self, HitLoc);
    }   
}

defaultproperties
{
    
}