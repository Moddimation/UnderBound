alarm[1]= 3;
canchoose= 0;
add= __view_get( e__VW.XView, view_current );
x= 89 + add;
y= 210 + __view_get( e__VW.YView, view_current );
d= -1;
if(instance_exists(obj_dialoguer )) d= obj_dialoguer.side;
if(room != 179 && (obj_mainchara.y > __view_get( e__VW.YView, view_current ) + 130 || d == 0))
    y-= 155;
mychoice= 0;
global.choice= -1;
choiced= 0;


/*  */
