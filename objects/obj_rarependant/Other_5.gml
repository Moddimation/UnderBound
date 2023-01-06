if(global.flag[107] == 2) {
    i= 0;
    while(i < 8) {
        if(global.item[i] == 27) scr_itemshift(i, 0);
        i++;
    }
    global.flag[107]= 0;
}
caster_free(dogsong);

