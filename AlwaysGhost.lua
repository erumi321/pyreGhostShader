ModUtil.RegisterMod( "AlwaysGhost" )

local config = {
 teamAGhost = true,
 teamBGhost = true,
}
AlwaysGhost.config = config

ModUtil.WrapBaseFunction( "PrepareLocalMPDraft", function(baseFunc, TeamAid, TeamBid )
		local TeamA = League[TeamAid]
		local TeamB = League[TeamBid]
		
		TeamA.UsePhantomShader = config.teamAGhost
		TeamB.UsePhantomShader = config.teamBGhost
		
	return baseFunc( TeamAid, TeamBid )
end, AlwaysGhost)