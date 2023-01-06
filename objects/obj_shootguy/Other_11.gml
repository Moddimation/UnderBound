i= gridl + 30;
while(i < gridr) {
    j= gridu + 10;
    while(j < gridd) {
        if(collision_point(i, j, 1242, 0, 1)) {
            with(collision_point(i, j, 1242, 0, 1)) event_user(1);
        }
        j+= 20;
    }
    i+= 20;
}

