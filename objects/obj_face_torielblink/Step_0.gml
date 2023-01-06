if(image_index == 0 && instance_exists(OBJ_WRITER ) && OBJ_WRITER.halt == 0)
    instance_change(765, 1);
if(global.faceemotion == 0 && sprite_index != 2005)
    sprite_index= spr_face_torielhappyblink ;
if(global.faceemotion == 1 && sprite_index != 2007)
    sprite_index= spr_face_torielblinkside ;
if(global.faceemotion == 2 && sprite_index != real(2006))
    sprite_index= real(2006);
if(global.faceemotion == 3 && sprite_index != real(1999))
    sprite_index= real(1999);
if(global.faceemotion == 4 && sprite_index != real(2000))
    sprite_index= real(2000);
if(global.faceemotion == 5 && sprite_index != real(1997))
    sprite_index= real(1997);
if(global.faceemotion == 6 && sprite_index != real(1991))
    sprite_index= real(1992);
if(global.faceemotion == 7 && sprite_index != real(1993))
    sprite_index= real(1995);
if(global.faceemotion == 8 && sprite_index != real(1996))
    sprite_index= real(1996);
if(global.faceemotion == 9 && sprite_index != real(1987))
    sprite_index= real(1987);


/*  */
