if(drawnlab == 1 && global.entrance != 3) sprite_delete(lab);
charax= (obj_mainchara.x - __view_get( e__VW.XView, 0 )) * 2;
charay= obj_mainchara.y * 2;
lab= sprite_create_from_screen_x(charax - 10, charay - 5, 60, 40, 0, 0, 0, 0);
sprite_index= lab;
image_xscale= 0.25;
image_yscale= 0.25;
drawnlab= 1;
if(fps <= 21) fps_counter++;
else  fps_counter= 0;
if(fps_counter >= 90) {
    not_allowed= 1;
    emer= scr_marker(x - 1, y - 1, 986);
    emer.image_speed= 0.5;
    emer.depth= 198;
    instance_destroy();
    exit;
} else  exit;

