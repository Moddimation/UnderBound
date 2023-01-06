scr_depth(0, 0, 0, 0, 0);
if(global.kills > 16) instance_destroy();
if(room == 29 && global.kills > 10) instance_destroy();
if(room == 12 && global.kills > 2) instance_destroy();
if(instance_exists(OBJ_WRITER ) && myinteract != 0) {
    if(keyboard_multicheck_pressed(1) && OBJ_WRITER.stringno > 1)
        xed= 1;
    if(xed > 0) {
        OBJ_WRITER.mystring[4]= "* (Oh^1, not you too!)/%%";
        if(global.flag[7] == 1)
            OBJ_WRITER.mystring[4]= "* (... I suppose some things&  never change.)/%%";
        xed= 0;
    }
}

/* */
/*  */
