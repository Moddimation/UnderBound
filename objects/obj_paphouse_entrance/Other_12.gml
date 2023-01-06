global.interact= 3;
if(global.flag[7] == 0) instance_create(0, 0, obj_musfadeout );
instance_create(0, 0, obj_unfader );
if(touched == 0) {
    alarm[2]= 13;
    touched= 1;
}
if(global.flag[88] == 1) global.flag[88]= 2;

/* */
/*  */
