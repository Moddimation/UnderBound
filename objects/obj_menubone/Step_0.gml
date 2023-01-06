stoptimer= 1;
siner++;
x= -30 + abs(sin(siner / 9) * 105);
if(x >= 64) siner-= 0.72;
if(x < 10) stoptimer= 0;
if(x <= -8 && terminate == 1) instance_destroy();

