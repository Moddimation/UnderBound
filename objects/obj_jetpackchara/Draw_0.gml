xx= __view_get( e__VW.XView, 0 );
yy= __view_get( e__VW.YView, 0 );
draw_sprite(sprite_index, image_index, x, y);
timertime--;
if(timertime < 300) timertime+= 0.25;

