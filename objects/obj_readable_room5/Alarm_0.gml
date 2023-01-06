myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(room == 224) {
    global.msg[0]= "* (There are a lot of striped&  shirts in here.)/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "* Our clothes./%%";
}
if(room == 223) {
    global.msg[0]= "* (It\\'s ASGORE\\'s journal.)&* (All the current page says&  is \\'Nice day today!\\')/";
    global.msg[1]= "* (The ink is still almost wet.)/%%";
    if(global.flag[7] == 1) global.msg[1]= "* (The ink\\'s dry now.)/%%";
    if(scr_murderlv() >= 16)
        global.msg[0]= "* The entries are always the&  same./%%";
    if(x < 208) global.msg[0]= "* (It\\'s just a chair.)/%%";
}
if(room == 59) global.msc= 696;
if(room == 141) {
    global.msg[0]= "* (It\\'s a teacup shaped like&  a yellow lizard.^1)&* (It\\'s full of soda.)/%%";
    if(global.plot < 126 && scr_murderlv() < 12)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
    if(y >= 125 && x > 800) global.msc= 827;
}
if(room == 142) {
    if(x < 130) {
        global.msg[0]= "* (It\\'s a promo poster for&  Mettaton\\'s TV premiere.)/";
        global.msg[1]= "* (On the flap it says " + chr(ord("\"")) + "Thank&  you for making my dreams&  come true." + chr(ord("\"")) + ")/%%";
    }
    if(x < 204 && x > 144) {
        global.msg[0]= "* (An incredible invention.)/";
        global.msg[1]= "* (When not in use^1, this bed&  folds into an extremely-&  easy-to-draw box.)/%%";
    }
    if(x < 575 && x > 474)
        global.msg[0]= "* (Pink goop drips from this&  strange machine.)/%%";
    if(x > 575) global.msc= 647;
}
if(room == 102) {
    global.msg[0]= "* A haunting song echoes&  down the corridor...&* Won\\'t you play along?/";
    global.msg[1]= "* Only the first 8 are fine./%%";
}
if(room == 91) {
    global.msg[0]= "* (It\\'s an illustration of a&  strange creature...)/";
    global.msg[1]= "* (There\\'s something very&  unsettling about this drawing.)/%%";
}
if(room == 74) {
    global.msg[0]= "* Love^1, hope^1, compassion..^1.&* This is what people say&  monster SOULs are made of./";
    global.msg[1]= "* But the absolute nature of&  " + chr(ord("\"")) + "SOUL" + chr(ord("\"")) + " is unknown./";
    global.msg[2]= "* After all^1, humans have proven&  their SOULs don\\'t need these&  things to exist./%%";
}
if(room == 118) {
    global.msg[0]= "* (There\\'s a silverware drawer.^1)&* (It has forks^1, spoons^1,&  knives...)/";
    global.msg[1]= "* (... tiny swords^1, axes^1,&  spears^1, nunchucks...)/%%";
}
if(room == 118 && x < 80) {
    global.facechoice= 5;
    global.faceemotion= 4;
    global.typer= 37;
    global.msg[0]= "* I can\\'t believe he&  leapt through the&  window like that./";
    global.msg[1]= "\\\\E6* Normally he NAILS&  the landing./%%";
}
if(room == 138) {
    global.msg[0]= "* (Small puddle forming.)/%%";
    if(global.flag[353] > 7) global.msg[0]= "* (Medium puddle forming.)/%%";
    if(global.flag[353] > 15) global.msg[0]= "* (Large puddle forming.)/%%";
    if(global.flag[353] > 15 && global.flag[7] == 1)
        global.msg[0]= "* (A small tree is growing in&  the puddle.)/%%";
}
if(room == 141 && x > 828 && x < 868 && y < 90)
    global.msg[0]= "* (It\\'s a bathroom sign.)/%%";
if(room == 78) {
    if(x < 128) {
        if(global.flag[497] < 3) {
            global.msg[0]= "* (Inside the drawer is a silver&  key.)/";
            global.msg[1]= "* (You put it on your keychain.)/%%";
            global.flag[497]= 3;
        } else 
            global.msg[0]= "* (Clothes and trombones are&  shoved in haphazardly.)/%%";
    } else 
        global.msg[0]= "* (It appears to be a self-&  sustaining tornado made of&  trash.)/%%";
}
if(room == 154) global.msg[0]= "* (It\\'s glued to the table.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );

/* */
/*  */
