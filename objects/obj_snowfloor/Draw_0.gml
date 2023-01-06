draw_set_color(16777215);
yy= 0;
xx= 0;
while(yy < 5) {
    if(dodraw[yy,xx] == 1)
        draw_circle(snowx[yy,xx], snowy[yy,xx], 2.8, 0);
    if(collision_circle(snowx[yy,xx], snowy[yy,xx], 2, 1570, 0, 1) != -4)
        moveme[yy,xx]= floor(random(4)) + 2;
    if(moveme[yy,xx] > 1) {
        if(obj_mainchara.moving == 1) {
            if(room == 57 && global.flag[64] == 0) global.flag[64]= -1;
            if(obj_mainchara.bbox_left > snowx[yy,xx])
                snowx[yy,xx]-= moveme[yy,xx];
            if(obj_mainchara.bbox_right < snowx[yy,xx])
                snowx[yy,xx]+= moveme[yy,xx];
            if(obj_mainchara.bbox_top > snowy[yy,xx])
                snowy[yy,xx]-= moveme[yy,xx];
            if(obj_mainchara.bbox_bottom < snowy[yy,xx])
                snowy[yy,xx]+= moveme[yy,xx];
            snowx[yy,xx]+= (random(moveme[yy,xx]) - moveme[yy,xx] / 2) / 2;
            snowy[yy,xx]+= (random(moveme[yy,xx]) - moveme[yy,xx] / 2) / 2;
        }
        moveme[yy,xx]--;
    }
    if(xx == 4) {
        xx= -1;
        yy++;
    }
    xx++;
}

