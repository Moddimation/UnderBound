global.entrance= 1;
instance_create(0, 0, obj_persistentfader );
if(room != 236) room_goto(room_next(room));
else  {
    if(global.flag[7] == 1) room_goto(240);
    else  room_goto_next();
}


/*  */
