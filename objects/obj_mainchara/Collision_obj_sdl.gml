if(global.phasing == 0 && global.interact == 0) {
    if(global.facing == 3) {
        if(collision_point(bbox_left - 2, bbox_top - 2, 820, 0, 1) == -4) {
            x= xprevious - 3;
            y= yprevious - 3;
        } else  x= xprevious;
    }
    if(global.facing == 0) {
        if(collision_point(bbox_right + 3, bbox_bottom + 3, 820, 0, 1) == -4) {
            x= xprevious + 3;
            y= yprevious + 3;
        } else  y= yprevious;
    }
    if(global.facing == 2) {
        x= xprevious;
        y= yprevious - 3;
    }
    if(global.facing == 1) {
        y= yprevious;
        x= xprevious + 3;
    }
    if(obj_time.down == 1 && obj_time.left == 1) {
        x= xprevious;
        y= yprevious;
    }
    moving= 0;
    if(x % 3 != 0) x++;
    if(y % 3 != 0) y--;
}
if(global.interact == 5 || global.interact == 1 || global.interact == 3 && global.phasing == 0) {
    x= xprevious;
    y= yprevious;
}

