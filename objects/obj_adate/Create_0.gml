caster_free(-3);
global.interact= 0;
instance_create(0, 0, obj_fader );
global.faceemotion= 0;
global.facechoice= 0;
face_speed= 0.2;
face_index= 0;
cn= -2;
alarm[4]= 15;
skip= 0;
global.inbattle= 1;
choice= 0;
choicer= 0;
global.border= 11;
SCR_BORDERSETUP(0);
instance_create(0, 0, obj_uborder );
instance_create(0, 0, obj_dborder );
instance_create(0, 0, obj_lborder );
instance_create(0, 0, obj_rborder );
datemusic= caster_load("music/date.ogg");
lab= caster_load("music/lab.ogg");
datevolume= 1;
sha= 0;
haty= 0;
blcon= 5475834;
present= 0;
obj_adate_body.x= room_width;
global.flag[20]= 0;
fadeamt= 0;
fadeouter= 0;
pitch= 1;


/*  */
