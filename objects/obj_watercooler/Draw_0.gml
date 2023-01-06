draw_sprite(sprite_index, image_index, x, y);
height= 21 - global.flag[440];
if(height > 0)
    draw_sprite_part(1866, 0, 0, 23 - height, 19, height, x, y + 23 - height);
if(height > 5) {
    siner++;
    i= 0;
    while(i < 3) {
        draw_point_color(x + bubx[i], y + buby[i], 16777215);
        buby[i]-= 0.1 + random(0.3);
        bubx[i]+= sin((siner + i * 2) / 3) * 0.25;
        if(buby[i] + y < y + 23 - height + 1) {
            buby[i]= 20;
            bubx[i]= 4 + random(10);
        }
        i++;
    }
}

