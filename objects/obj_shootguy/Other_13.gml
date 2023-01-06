j= gridd - 30;
while(j > gridu) {
    i= gridl + 10;
    while(i < gridr) {
        if(collision_point(i, j, 1242, 0, 1)) {
            with(collision_point(i, j, 1242, 0, 1)) event_user(3);
        }
        i+= 20;
    }
    j-= 20;
}

