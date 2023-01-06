thisi= floor(random(10));
i= 9;
while(i > 0) {
    rp[i]= rp[i - 1];
    i--;
}
rp[0]= global.ratings - random(global.ratings / 2);
if(accu == 6) rp[0]= global.ratings;
accu++;
if(accu == 10) accu= 0;
alarm[5]= 6;

