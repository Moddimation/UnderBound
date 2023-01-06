con= 0;
image_yscale= 5;
if(global.plot > 134) instance_destroy();
else  {
    obj_mainchara.cutscene= 1;
    __view_set( e__VW.YView, 0, 240 );
    instance_create(0, 0, obj_musfadeout );
    __view_set( e__VW.Object, 0, -4 );
}
yoffset1= 240;


/*  */
