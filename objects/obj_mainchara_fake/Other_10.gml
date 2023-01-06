if(global.interact == 0) {
    if(global.facing == 1 && collision_rectangle(x + sprite_width / 2, y + 19, x + sprite_width + 15, y + sprite_height, 1368, 0, 1)) {
        interactedobject= collision_rectangle(x + sprite_width / 2, y + sprite_height / 2, x + sprite_width + 15, y + sprite_height, 1368, 0, 1);
        if(interactedobject != -4) {
            with(interactedobject) facing= 3;
            with(interactedobject) myinteract= 1;
        }
    }
    if(global.facing == 3 && collision_rectangle(x + sprite_width / 2, y + 19, x - 15, y + sprite_height, 1368, 0, 1)) {
        interactedobject= collision_rectangle(x + sprite_width / 2, y + 3 + sprite_height / 2, x - 15, y + sprite_height + 3, 1368, 0, 1);
        if(interactedobject != -4) {
            with(interactedobject) facing= 1;
            with(interactedobject) myinteract= 1;
        }
    }
    if(global.facing == 0 && collision_rectangle(x + 4, y + 20, x + sprite_width - 4, y + sprite_height + 15, 1368, 0, 1)) {
        interactedobject= collision_rectangle(x + 4, y + 20, x + sprite_width - 4, y + sprite_height + 15, 1368, 0, 1);
        if(interactedobject != -4) {
            with(interactedobject) facing= 2;
            with(interactedobject) myinteract= 1;
        }
    }
    if(global.facing == 2 && collision_rectangle(x + 4, y + sprite_height - 5, x + sprite_width - 4, y + 5, 1368, 0, 1)) {
        interactedobject= collision_rectangle(x + 4, y + sprite_height - 5, x + sprite_width - 4, y + 8, 1368, 0, 1);
        if(interactedobject != -4) {
            with(interactedobject) facing= 0;
            with(interactedobject) myinteract= 1;
        }
    }
}

