image_xscale= 3;
if(global.plot > 163 || scr_murderlv() < 12) {
    instance_destroy();
    exit;
} else  {
    bunny= scr_marker(154, 80, 1837);
    dragon= scr_marker(184, 80, 1838);
    with(bunny) scr_depth();
    with(dragon) scr_depth();
    con= 0;
    exit;
}

