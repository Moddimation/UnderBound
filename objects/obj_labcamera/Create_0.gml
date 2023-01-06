drawnlab= 0;
altglow= 0;
not_allowed= 0;
fps_counter= 0;
if(global.osflavor != 1) {
    emer= scr_marker(x - 1, y - 1, 986);
    emer.image_speed= 0.5;
    emer.depth= 198;
    instance_destroy();
    exit;
} else  exit;

