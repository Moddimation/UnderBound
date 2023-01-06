if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself]) {
    global.goldreward[3]+= 60;
    global.flag[149]= 1;
}
if(killed == 1) {
    global.xpreward[3]+= global.xpreward[myself];
    global.goldreward[3]+= global.goldreward[myself];
    with(mypart1) event_user(0);
    global.kills++;
    global.areapop[global.area]--;
    if(global.areapop[global.area] < 0) global.areapop[global.area]= 0;
    global.flag[12]= 1;
}
if(killed == 0) {
    // obj_vulkin
    with(337) specialmessage= 1;
    with(mypart1) instance_destroy();
    global.goldreward[3]+= floor(global.goldreward[myself] * (global.monstermaxhp[myself] - global.monsterhp[myself]) / global.monstermaxhp[myself]);
    global.monstersprite= sprite_index;
    ddd= instance_create(x, y, obj_spared );
    ddd.image_speed= 0;
    ddd.image_index= 1;
    global.flag[10]= 1;
}
global.monster[myself]= 0;

/* */
/*  */
