dmg= 10;
height= 86;
length= 65;
leg1= instance_create(x + 20, y + height, obj_temleg );
leg2= instance_create(x + 30, y + height, obj_temleg );
leg2.siner= 6.28318530717959;
leg3= instance_create(x + 40 + length, y + height, obj_temleg );
leg4= instance_create(x + 50 + length, y + height, obj_temleg );
leg4.siner= 6.28318530717959;
leg3.length= 20;
leg4.length= 20;
obj_temleg.height= height;
obj_temleg.dmg= dmg - 3;
control= 0;
adjustspeed= 0.15;
siner= 0;


/*  */
