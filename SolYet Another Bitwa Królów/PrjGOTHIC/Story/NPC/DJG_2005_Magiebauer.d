// Budowniczy Domu Magow Niebieskiego Obozu

instance DJG_2005_MAGIEBAUER(Npc_Default)
{
	name[0] = NPCNAME_MAGIEBAUER;
	guild = GIL_NONE;
	id = 2005;
	voice = 6;
	npcType = NPC_FLAG_GHOST | npctype_main;
	aivar[AIV_ToughGuy] = TRUE;
	aivar[AIV_ToughGuyNewsOverride] = TRUE;
	aivar[AIV_IGNORE_Murder] = TRUE;
	aivar[AIV_IGNORE_Theft] = TRUE;
	aivar[AIV_IGNORE_Sheepkiller] = TRUE;
	aivar[AIV_IgnoresArmor] = TRUE;
	aivar[AIV_NoFightParker] = TRUE;
	aivar[91] = TRUE;
	B_SetAttributesToChapter(self,1);
	Mdl_SetVisual(self,"humans.mds");
	Mdl_ApplyOverlayMds(self,"humans_relaxed.mds");
	if(FRAKTION_L2 == DJG)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_djg_m);
	}
	else if(FRAKTION_L2 == PAL)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,ItAr_PAL_M);
	}
	else if(FRAKTION_L2 == TMP)
	{
		B_SetNpcVisual(self,MALE,"Hum_Head_Fighter",Face_N_NormalBart08,BodyTex_N,itar_tmp_m);
	}
	else if(FRAKTION_L2 == SKE)
	{
		B_SetSkelettVisual(self,3);
	};
	Mdl_SetModelFatness(self,1);
	B_GiveNpcTalents(self);
	B_SetFightSkills(self,10);
	senses = SENSE_SEE | SENSE_SMELL;
	senses_range = 2000;
	fight_tactic = FAI_HUMAN_COWARD;
	daily_routine = Rtn_Start_2005;
};


func void Rtn_Start_2005()
{
	TA_Stand_WP(8,0,23,0,"L2_MAGIE_01");
	TA_Stand_WP(23,0,8,0,"L2_MAGIE_01");
};

func void rtn_tot_2005()
{
	TA_Stand_WP(8,0,23,0,"TOT");
	TA_Stand_WP(23,0,8,0,"TOT");
};

