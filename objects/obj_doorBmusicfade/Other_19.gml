global.interact= 3;
instance_create(0, 0, obj_unfader );
ok= 1;
if(room == 137 && !instance_exists(obj_undynea_chaser ))
    ok= 0;
if(global.flag[7] == 0 && ok == 1) instance_create(0, 0, obj_musfadeout );
if(touched == 0) {
    alarm[2]= 13;
    touched= 1;
}
if(global.flag[7] == 0 && room == 32)
    caster_free(global.currentsong2);


/*  */
