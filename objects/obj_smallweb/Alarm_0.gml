myinteract= 3;
global.msc= 514;
if(room == 170) global.msc= 746;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(room == 120) {
    global.msc= 0;
    global.msg[0]= "* (It\\'s a spider web.)/";
    global.msg[1]= "* (There\\'s a flyer for a&  bake sale on it.)/%%";
} else  instance_create(0, 0, obj_golddisplay );
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
