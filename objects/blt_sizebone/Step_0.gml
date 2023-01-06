if(drawn == 1 && active == 1) {
    if(y <= ystart - oscmax || y >= ystart - oscmin)
        osc= -osc;
    y+= osc;
}

