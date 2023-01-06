caster_stop(-3);
global.typer= 74;
global.msg[0]= "  And you\\'re NEVER&  waking up!^3 %%";
global.msg[1]= "%%";
alarm[8]= 150;
con= 4;
dingus= 1;
script_execute(SCR_TEXTTYPE , global.typer);
global.msc= 0;
instance_create(100, 300, obj_flowey_writer );

/* */
/*  */
