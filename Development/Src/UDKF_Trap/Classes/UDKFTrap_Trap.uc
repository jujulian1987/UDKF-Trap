class UDKFTrap_Trap extends Actor;

var StaticMeshComponent smcTrap;
var Controller trapOwner;
var bool bActivated;

event Bump( Actor Other, PrimitiveComponent OtherComp, Vector HitNormal ){
    if(Other.Class == class'UDKFTrap_Pawn'){
        `log("Bumped Trap!");
        Other.TakeDamage(30,trapOwner,self.Location,self.Location,class'DamageType');
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
    
    bAlwaysRelevant=true
    bCollideActors=true
    bBlockActors=true
    bActivated=false
}