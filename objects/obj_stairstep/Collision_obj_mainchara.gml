if(global.facing != stepped) {
    if(global.facing == 3) {
        other.y++;
        stepped= 3;
    }
    if(global.facing == 1) {
        other.y--;
        stepped= 1;
    }
}

