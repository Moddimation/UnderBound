thisx= x;
thisy= y;
sword_b= instance_create(obj_asriel_body.x + 36, obj_asriel_body.y + 35, obj_asriel_swordarm );
sword_a= instance_create(obj_asriel_body.x - 36, obj_asriel_body.y + 35, obj_asriel_swordarm );
sf= 0;
siner= 0;
lastwhich= 0;
lastwhichwhich= 0;
times= 0;
king= 569;
freakcon= 0;
sfx_pb= caster_load("music/sfx/sfx_a_pullback.ogg");
sfx_cut= caster_load("music/sfx_cinematiccut.ogg");
sfx_bc= caster_load("music/sfx/sfx_segapower2.ogg");
sfx_spk= caster_load("music/sfx/sfx_sparkles.ogg");
sfx_ap= caster_load("music/sfx/sfx_a_swordappear.ogg");
sfx_grab= caster_load("music/sfx/sfx_a_grab.ogg");
sfx_jafe= caster_load("music/sfx_voice_jafe.ogg");
caster_play(sfx_ap, 1, 1);
last= 0;
never= 0;
h_mode= 0;


/*  */
