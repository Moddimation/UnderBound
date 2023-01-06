if(curtype >= 1 && curtype <= 13) {
    i= 5;
    while(i > 0) {
        rq_v[i]= rq_v[i - 1];
        rq_s[i]= rq_s[i - 1];
        rq[i]= rq[i - 1];
        i--;
    }
    if(curtype == 1) {
        rq[0]= "Violence";
        if(typeuse[1] == 0) rq_v[0]= 50;
        if(typeuse[1] == 1) rq_v[0]= 25;
        if(typeuse[1] == 2) rq_v[0]= 20;
        if(typeuse[1] == 3) rq_v[0]= 15;
        if(typeuse[1] >= 4) rq_v[0]= 10;
        typeuse[1]++;
    }
    if(curtype == 2) {
        rq[0]= "Disappoint";
        rq_v[0]= -100;
        if(typeuse[2] >= 5) rq_v[0]= -50;
        if(typeuse[2] >= 20) rq_v[0]= -1;
        boastmode= 0;
        typeuse[2]++;
    }
    if(curtype == 3) {
        rq[0]= "Justice";
        rq_v[0]= 100;
        typeuse[3]++;
    }
    if(curtype == 4) {
        rq[0]= "Action";
        rq_v[0]= 300;
        if(typeuse[4] == 0) rq_v[0]= 300;
        if(typeuse[4] == 1) rq_v[0]= 200;
        if(typeuse[4] == 2) rq_v[0]= 150;
        if(typeuse[4] == 3) rq_v[0]= 100;
        if(typeuse[4] >= 4) rq_v[0]= 50;
        typeuse[4]++;
    }
    if(curtype == 5) {
        rq[0]= "HyperAction";
        rq_v[0]= 400;
        if(typeuse[5] == 0) rq_v[0]= 400;
        if(typeuse[5] == 1) rq_v[0]= 300;
        if(typeuse[5] == 2) rq_v[0]= 200;
        if(typeuse[5] == 3) rq_v[0]= 200;
        if(typeuse[5] >= 4) rq_v[0]= 100;
        typeuse[5]++;
    }
    if(curtype == 6) {
        rq[0]= "Fashion";
        rq_v[0]= 1500;
        typeuse[6]++;
    }
    if(curtype == 7) {
        rq[0]= "Fetching";
        rq_v[0]= 600;
        if(typeuse[7] == 0) rq_v[0]= 700;
        if(typeuse[7] >= 1) rq_v[0]= 1;
        typeuse[7]++;
    }
    if(curtype == 8) {
        rq[0]= "EatingGarbage?";
        rq_v[0]= -50;
        typeuse[8]++;
    }
    if(curtype == 9) {
        rq[0]= "OnBrandFood";
        rq_v[0]= 200;
        if(typeuse[9] == 0) rq_v[0]= 300;
        if(typeuse[9] == 1) rq_v[0]= 200;
        if(typeuse[9] >= 2) rq_v[0]= 200;
        typeuse[9]++;
    }
    if(curtype == 10) {
        rq[0]= "OnBrandFood";
        rq_v[0]= 400;
        if(typeuse[10] == 0) rq_v[0]= 500;
        if(typeuse[10] == 1) rq_v[0]= 300;
        if(typeuse[10] >= 2) rq_v[0]= 300;
        typeuse[10]++;
    }
    if(curtype == 11) {
        rq[0]= "Dramatic";
        rq_v[0]= 100;
        if(global.hp < global.maxhp / 1.5) rq_v[0]= 150;
        if(global.hp < global.maxhp / 2) rq_v[0]= 250;
        if(global.hp < global.maxhp / 4) rq_v[0]= 400;
        if(global.hp < 4) rq_v[0]= 500;
        if(global.hp == 1) rq_v[0]= 600;
        typeuse[11]++;
    }
    if(curtype == 12) {
        rq[0]= "Writing";
        rq_v[0]= 50;
        rq_v[0]= essay;
        typeuse[12]++;
    }
    if(curtype == 13) {
        rq[0]= "OnBrandFood";
        rq_v[0]= 700;
        typeuse[13]++;
    }
    if(instance_exists(obj_mettatonex ) && obj_mettatonex.turns >= 20 && rq_v[0] > 0)
        rq_v[0]*= 2;
    global.ratings+= rq_v[0];
    rq_s[0]= 0;
}

/* */
/*  */
