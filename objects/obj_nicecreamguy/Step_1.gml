if(conversation == 1 && !instance_exists(obj_dialoguer )) {
    global.interact= 1;
    image_index= 0;
    image_speed= 0.1;
    sprite_index= spr_icecreamguy_anim ;
    conversation= 2;
}
if(conversation == 2) {
    global.interact= 1;
    j++;
}
if(conversation == 2 && j > 30) {
    global.interact= 1;
    sprite_index= spr_icecreamguy_happy ;
    image_speed= 0;
    global.msc= 0;
    global.typer= 5;
    myinteract= 3;
    global.msg[0]= "* OH!!!^1!&* A CUSTOMER!!!/%%";
    if(room == 96) {
        global.msg[0]= "* Fortunately^1, I\\'ve thought&  of a solution!!/";
        global.msg[1]= "* Punch cards!!/";
        global.msg[2]= "* Every time you buy a&  Nice Cream^1, you can take a&  punch card from the box./";
        global.msg[3]= "* If you have 3 cards^1, you&  can trade them for a&  free Nice Cream!/";
        global.msg[4]= "* They\\'re sure to get the&  customers to come back!/%%";
        global.msg[5]= "* Anyway.../%%";
    }
    if(room == 181) {
        sprite_index= spr_icecreamguy_sad ;
        global.msg[0]= "* I\\'m having a going out of&  business sale./%%";
    }
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 3;
}
if(conversation == 3 && !instance_exists(OBJ_WRITER )) {
    instance_create(0, 0, obj_golddisplay );
    global.interact= 1;
    myinteract= 3;
    global.msc= 230;
    if(room == 96) global.msc= 232;
    if(room == 181) global.msc= 273;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* You must have something better to do than read this message./%%";
    mydialoguer= instance_create(0, 0, obj_dialoguer );
    conversation= 4;
    global.flag[60]= 1;
    if(room == 96) global.flag[79]= 8;
    if(room == 181) global.flag[250]= 1;
}
if(myinteract == 3 && instance_exists(OBJ_WRITER )) {
    if(OBJ_WRITER.halt == 0) image_speed= 0.2;
    else  image_speed= 0;
}
if(myinteract == 0 || !instance_exists(OBJ_WRITER )) {
    image_speed= 0;
    image_index= 0;
}

/* */
/*  */
