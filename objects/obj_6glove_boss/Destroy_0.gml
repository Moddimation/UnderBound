i= 0;
while(i < maxnum) {
    if(instance_exists(glove[i])) {
        with(glove[i]) instance_destroy();
    }
    i++;
}

