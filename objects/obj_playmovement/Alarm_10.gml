alarm[10]= 15;
if(con > 10) {
    ql= 0;
    if(mainmove - lastmove > 10) ql++;
    franto= abs(obj_mainchara.x - lastx) + abs(obj_mainchara.y - lasty);
    if(franto < 30 && franto > 3) ql++;
    if(franto > 38) unfrantic++;
    lastx= obj_mainchara.x;
    lasty= obj_mainchara.y;
    if(ql == 2) frantic++;
    lastmove= mainmove;
}

