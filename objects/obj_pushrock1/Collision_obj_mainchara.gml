other.moving= 0;
if(push == 0) {
    if(global.facing == 1) {
        x+= 3;
        other.x+= 3;
        other.moving= 1;
    }
    if(global.facing == 3 && x > xstart) {
        x-= 3;
        other.x-= 3;
        other.moving= 1;
    }
}

