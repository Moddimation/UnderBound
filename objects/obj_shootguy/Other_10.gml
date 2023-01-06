i= gridr - 30;
while(i > gridl) {
    j= gridu + 10;
    while(j < gridd) {
        if(collision_point(i, j, 1242, 0, 1)) {
            with(collision_point(i, j, 1242, 0, 1)) event_user(0);
        }
        j+= 20;
    }
    i-= 20;
}

