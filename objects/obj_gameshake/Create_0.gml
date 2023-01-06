gameshake= 100;
alarm[0]= 8;
if(global.osflavor == 1) window_set_fullscreen(0);
window_set_caption(" ");
if(global.osflavor == 1) {
    window_center();
    wx= window_get_x();
    wy= window_get_y();
    window_set_position(wx + gameshake, wy);
}
__background_set( e__BG.Index, 3, 193 );
__background_set( e__BG.Foreground, 3, 1 );
__background_set( e__BG.HTiled, 3, 1 );
__background_set( e__BG.VTiled, 3, 1 );
__background_set( e__BG.Visible, 3, 1 );
__background_set( e__BG.HSpeed, 3, 0 );
__background_set( e__BG.VSpeed, 3, 0 );

