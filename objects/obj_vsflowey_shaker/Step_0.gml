__view_set( e__VW.XView, 0, random(shakex) - random(shakex) );
__view_set( e__VW.YView, 0, random(shakey) - random(shakey) );
if(turn1 == 0) {
    __view_set( e__VW.XView, 0, shakex * choose(1, -1) );
    __view_set( e__VW.YView, 0, shakey * choose(1, -1) );
    turn1= 1;
}
if(decay == 1) {
    shakex--;
    shakey--;
}
if(shakex <= 0 && shakey <= 0) {
    __view_set( e__VW.XView, 0, 0 );
    __view_set( e__VW.YView, 0, 0 );
    instance_destroy();
}

