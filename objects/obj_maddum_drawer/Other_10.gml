mode= 1;
partx[0]= 5;
party[0]= 75;
partrot[0]= -rot;
partx[1]= 0;
party[1]= 35 + rot / 4;
partrot[1]= rot / 2;
partx[2]= 5;
party[2]= 65;
partrot[2]= rot / 3;
partx[3]= -rot / 3;
party[3]= rot / 3;
partrot[3]= rot;
i= 0;
while(i < 4) {
    opartx[i]= partx[i];
    oparty[i]= party[i];
    opartrot[i]= partrot[i];
    i++;
}
fakegrav= 0.5;

