die= 0;
currenthour= current_hour;
if(currenthour <= 6 || currenthour >= 18) image_index= 0;
else  image_index= 1;
alarm[0]= 1800;
image_speed= 0;
weekday= current_weekday;
if(weekday == 0) day= "SUN";
if(weekday == 1) day= "MON";
if(weekday == 2) day= "TUE";
if(weekday == 3) day= "WED";
if(weekday == 4) day= "THU";
if(weekday == 5) day= "FRI";
if(weekday == 6) day= "SAT";
if(weekday == 7) day= "SUN";
rot= 0;

