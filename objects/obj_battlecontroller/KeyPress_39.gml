currentplace= global.bmenucoord[0];
if(global.mnfight == 0) {
    if(global.bmenuno == 0) {
        global.bmenucoord[0]++;
        if(global.bmenucoord[0] > 3) global.bmenucoord[0]= 0;
        if(global.mercy == 2 && global.bmenucoord[0] == 3) global.bmenucoord[0]= 0;
        if(global.mercy == 3) global.bmenucoord[0]= 1;
    }
    if(global.bmenuno == 10) {
        if(global.bmenucoord[2] <= 2)
            global.bmenucoord[2]+= 3;
        else  global.bmenucoord[2]-= 3;
        if(global.choices[global.bmenucoord[2]] == 0)
            global.bmenucoord[2]--;
        if(global.choices[0] == 1 && global.choices[1] == 0 && global.choices[2] == 0 && global.choices[3] == 0 && global.choices[4] == 0 && global.choices[5] == 0)
            global.bmenucoord[2]= 0;
    }
    if(global.bmenuno == 6) {
        if(global.bmenucoord[6] == 0)
            global.bmenucoord[6]++;
        else  global.bmenucoord[6]--;
    }
    mv= 0;
    if(global.myfight != 4 && global.bmenuno == 3) {
        tempcheck= global.bmenuno;
        if(global.bmenucoord[3] == 0) {
            if(global.item[1] != 0) global.bmenucoord[3]= 1;
            mv= 1;
        }
        if(mv == 0 && global.bmenucoord[3] == 1) {
            if(global.item[4] != 0) {
                global.bmenucoord[3]= 0;
                global.bmenuno= 3.5;
            } else  global.bmenucoord[3]= 0;
            mv= 1;
        }
        if(global.bmenucoord[3] == 2) {
            if(global.item[3] != 0) global.bmenucoord[3]= 3;
            mv= 1;
        }
        if(mv == 0 && global.bmenucoord[3] == 3) {
            if(global.item[6] != 0) {
                global.bmenucoord[3]= 2;
                global.bmenuno= 3.5;
            } else  global.bmenucoord[3]= 2;
            mv= 1;
        }
        if(global.bmenuno != tempcheck) script_execute(scr_itemrewrite );
    }
    if(mv == 0 && global.myfight != 4 && global.bmenuno == 3.5) {
        tempcheck= global.bmenuno;
        if(global.bmenucoord[3] == 1) {
            global.bmenucoord[3]= 0;
            global.bmenuno= 3;
            mv= 1;
        }
        if(mv == 0 && global.bmenucoord[3] == 0) {
            if(global.item[5] != 0) global.bmenucoord[3]= 1;
            else  {
                global.bmenucoord[3]= 0;
                global.bmenuno= 3;
            }
            mv= 1;
        }
        if(mv == 0 && global.bmenucoord[3] == 3) {
            global.bmenucoord[3]= 2;
            global.bmenuno= 3;
            mv= 1;
        }
        if(mv == 0 && global.bmenucoord[3] == 2) {
            if(global.item[7] != 0) global.bmenucoord[3]= 3;
            else  {
                global.bmenucoord[3]= 2;
                global.bmenuno= 3;
            }
            mv= 1;
        }
        if(mv == 1) snd_play(snd_squeak );
        if(global.bmenuno != tempcheck) script_execute(scr_itemrewrite );
    }
}
if(global.bmenucoord[0] != currentplace) snd_play(snd_squeak );


/*  */
