i= 0;
while(i < 8) {
    draw_sprite_ext(part[i], fakeanim, x + partx[i], y + party[i], 2, 2, 0, 16777215, 1);
    i++;
}
siner++;
fakeanim+= 0.1;
if(moving == 1) {
    party[7]+= sin(siner / 15) * 0.3;
    party[6]+= sin(siner / 15) * 0.2;
    party[5]+= cos(siner / 15) * 0.1;
    party[4]+= cos(siner / 15) * 0.1;
    party[3]+= sin(siner / 15) * 0.1;
    party[0]+= sin(siner / 15) * 0.05;
}
part[7]= 612;
part[6]= 613;
part[5]= 610;
part[4]= 611;
part[3]= 614;
part[2]= 615;
part[1]= 616;
part[0]= 608;

