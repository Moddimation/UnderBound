myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(instance_exists(obj_papyrusparent )) {
    scr_papface(0, 0);
    global.msg[1]= "HEY^1, THOSE ARE ALL&THE ATTACKS I USED&ON YOU./";
    global.msg[2]= "GREAT MEMORIES^1,&HUH?/";
    global.msg[3]= "SEEMS LIKE IT&WAS ONLY&YESTERDAY.../";
    global.msg[4]= "\\\\E3EVEN THOUGH&IT BASICALLY&JUST HAPPENED./%%";
    if(global.flag[290] == 1) {
        global.msg[1]= "HEY^1, THOSE ARE ALL&THE ATTACKS I&DIDN\\'T USE./";
        global.msg[2]= "\\\\WHOW LUCKY OF YOU^1!&HAD I ONLY USED&MY \\\\YSPECIAL ATTACK\\\\W,/";
        global.msg[3]= "\\\\E2YOU SURELY WOULD&HAVE BEEN BLASTED&TO.../";
        global.msg[4]= "\\\\WH\\\\E3EY.^1 WAIT^1.&WHERE\\'S MY \\\\YSPECIAL&ATTACK\\\\W?/";
        global.msg[5]= "\\\\E1NO^1! I\\'VE BEEN&DOGBURGLED BY THAT&PERNICIOUS PUP!/";
        global.msg[6]= "\\\\E3THAT LOATHESOME&SCOUNDREL LOVES TO&SNEAK INTO MY ROOM./";
        global.msg[7]= "\\\\E5SOMETIMES IT EVEN&CRAWLS INTO MY BED&WHILE I\\'M RESTING./";
        global.msg[8]= "\\\\E3IF THAT WASN\\'T&BAD ENOUGH^1, IT HAS&VERY COLD FEET./%%";
    }
    if(read > 0) global.msg[0]= "* (It\\'s a box of bones.)/%%";
} else  global.msg[0]= "* (It\\'s a box of bones.)/%%";
read++;
mydialoguer= instance_create(0, 0, obj_dialoguer );


/*  */
