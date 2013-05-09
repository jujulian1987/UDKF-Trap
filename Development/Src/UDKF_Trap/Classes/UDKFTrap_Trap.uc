class UDKFTrap_Trap extends Actor;

event Bump( Actor Other, PrimitiveComponent OtherComp, Vector HitNormal ){
	local UTPlayerController OwnerPlayerController;
    if(Other.Class == class'UDKFTrap_Pawn'){
        `log("Bumped Trap!");
		OwnerPlayerController = UTPlayerController(Owner);
        Other.TakeDamage(30,OwnerPlayerController,self.Location,self.Location,class'DamageType');
        self.Destroy();
    }
    
}

defaultproperties
{
    Begin Object Class=StaticMeshComponent Name=StaticMeshComponent0
        StaticMesh=StaticMesh'LT_Light.SM.Mesh.S_LT_Light_SM_Light01'
        bAllowApproximateOcclusion=TRUE
        bForceDirectLightMap=TRUE
        bUsePrecomputedShadows=TRUE
    End Object
    Components.Add(StaticMeshComponent0)
	RemoteRole=ROLE_SimulatedProxy
    bCollideActors=true
    bBlockActors=true
}