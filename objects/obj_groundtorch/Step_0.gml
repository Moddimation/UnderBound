if(myinteract == 1) {
    if(snd_isplaying(snd_movemenu ) == 0) snd_play(snd_movemenu );
    if(sprite_index == 1597) {
        sprite_index= spr_groundtorch_on ;
        glow= 1;
    } else  {
        sprite_index= spr_groundtorch_off ;
        glow= 0;
    }
    myinteract= 0;
}
if(instance_exists(obj_torchpuzzle ) && glow == 1)
    obj_torchpuzzle.h++;


/*  */
