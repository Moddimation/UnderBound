check= 0;
if(room == 120) {
    event_user(2);
    if(global.flag[94] == 0) alarm[0]= 15;
    check= 1;
}
if(room == 119 || room == 272 || room == 116 || room == 306)
    check= 1;
if(check == 0) event_user(1);

