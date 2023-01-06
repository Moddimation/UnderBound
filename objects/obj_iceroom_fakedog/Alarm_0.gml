myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(global.flag[261] == 0) {
    global.msg[0]= "* (You tried to pet the dog^1,&  but it collapsed into a&  pile of fluff...)/";
    global.msg[1]= "* (Seems like it was actually&  just a dog-shaped husk of&  dog residue.)/%%";
    global.flag[261]= 1;
    sprite_index= spr_tobdog_pile ;
} else  global.msg[0]= "* (It\\'s a pile of dog residue.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
