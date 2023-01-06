__view_set( e__VW.XView, 0, choose(-1, 1) * intensity );
__view_set( e__VW.YView, 0, choose(1, -1) * intensity );
intensity--;
if(intensity == 0) instance_destroy();
alarm[0]= 1;

