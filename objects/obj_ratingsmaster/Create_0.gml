global.ratings= 4000;
i= 0;
while(i < 6) {
    rq[i]= "";
    rq_v[i]= 0;
    rq_s[i]= 900;
    i++;
}
curtype= 0;
thisi= floor(random(8));
i= 0;
while(i < 10) {
    rp[i]= 4000 - random(500);
    if(i == thisi) rp[i]= global.ratings;
    i++;
}
alarm[5]= 6;
accu= 0;
i= 0;
while(i < 15) {
    typeuse[i]= 0;
    i++;
}
boastmode= 0;
siner= 0;
heel= 0;
checkhp= global.hp;
thisarmor= global.armor;
i= 0;
while(i < 9) {
    armor_worn[i]= 0;
    i++;
}
event_user(1);
novel_armor= 0;
timeloss= 0;
o_o= 0;
o_ob= 0;
essay= 0;
active= 1;

