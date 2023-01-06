alldead= 0;
global.encounter= 0;
factor= 360;
desto= 0;
if(room == 90) factor= 110;
if(room == 88) factor= 340;
if(room == 88 && global.flag[357] == 0 && global.entrance == 1) {
    factor= 20;
    desto= 1;
}
script_execute(scr_steps , factor, 30, 18, 204);
if(global.flag[204] == 0 && global.plot > 121) instance_destroy();


/*  */
