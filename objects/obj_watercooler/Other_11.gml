if(havewater == 0) {
    global.flag[366]= 1;
    havewater= 1;
    // obj_mainchara
    with(1570) {
        dsprite= 1037;
        rsprite= 1035;
        usprite= 1036;
        lsprite= 1034;
    }
} else  {
    event_user(2);
    global.flag[366]= 0;
    havewater= 0;
    // obj_mainchara
    with(1570) {
        dsprite= 1043;
        rsprite= 1045;
        usprite= 1044;
        lsprite= 1046;
    }
}

