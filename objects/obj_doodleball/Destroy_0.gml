if(active == 1) {
    i= 0;
    while(i < num) {
        if(instance_exists(child[i])) {
            with(child[i]) instance_destroy();
        }
        i++;
    }
}

