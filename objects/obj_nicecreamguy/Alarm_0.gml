if(room == 53) {
    if(global.flag[60] == 0) {
        myinteract= 3;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        mouth= 1;
        global.msg[0]= "* I don\\'t understand why&  these aren\\'t selling.../";
        global.msg[1]= "* It\\'s the perfect weather&  for something cold.../%%";
        mydialoguer= instance_create(0, 0, obj_dialoguer );
        conversation= 1;
    } else  {
        instance_create(0, 0, obj_golddisplay );
        myinteract= 3;
        global.msc= 230;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        global.msg[0]= "* You must have something better to do than read this message./%%";
        mydialoguer= instance_create(0, 0, obj_dialoguer );
    }
}
if(room == 96 && !instance_exists(OBJ_WRITER )) {
    if(global.flag[79] == 0) {
        myinteract= 3;
        global.msc= 0;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        mouth= 1;
        global.msg[0]= "* I relocated my store^1, but&  there are still no&  customers.../%%";
        mydialoguer= instance_create(0, 0, obj_dialoguer );
        conversation= 1;
    } else  {
        instance_create(0, 0, obj_golddisplay );
        myinteract= 3;
        global.msc= 232;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        global.msg[0]= "* You must have something better to do than read this message./%%";
        mydialoguer= instance_create(0, 0, obj_dialoguer );
    }
}
if(room == 181) {
    if(global.flag[402] == 1) {
        if(global.flag[250] == 0) {
            myinteract= 3;
            global.msc= 0;
            global.typer= 5;
            global.facechoice= 0;
            global.faceemotion= 0;
            mouth= 1;
            global.msg[0]= "* I thought for sure if I&  went to Hotland^1, I\\'d sell&  some Nice Creams./";
            global.msg[1]= "* But nobody wants them^1.&* Everyone\\'s just eating&  Starfaits and Glamburgers./";
            global.msg[2]= "* So!!!/%%";
            mydialoguer= instance_create(0, 0, obj_dialoguer );
            conversation= 1;
        } else  {
            instance_create(0, 0, obj_golddisplay );
            myinteract= 3;
            global.msc= 273;
            global.typer= 5;
            global.facechoice= 0;
            global.faceemotion= 0;
            global.msg[0]= "* You must have something better to do than read this message./%%";
            mydialoguer= instance_create(0, 0, obj_dialoguer );
        }
    } else  {
        global.msc= 0;
        myinteract= 3;
        global.typer= 5;
        global.facechoice= 0;
        global.faceemotion= 0;
        if(global.flag[250] >= 1)
            global.msg[0]= "* I\\'m so happy!^1!&* Nice Cream is really&  changing the world!!/%%";
        if(global.flag[250] == 0) {
            global.msg[0]= "* Hey^1!&* It\\'s you again^1!/";
            global.msg[1]= "* Business is excellent here^1!&* These two fellas bought&  ALL my ice cream!/";
            global.msg[2]= "* I\\'ve actually sold out of&  everything!!!/";
            global.msg[3]= "* ... sorry./";
            global.msg[4]= "* Wait^1!&* I\\'ve still got something&  for you!/";
            global.msg[5]= "* ... a big smile^1!&* How about that!/%%";
            global.flag[250]= 1;
        }
        if(global.flag[7] == 1) {
            global.msg[0]= "* I\\'m so excited to sell&  Nice Cream on the surface!/";
            if(global.flag[60] <= 10) {
                global.msg[1]= "* If all humans are like you^1,&  then...!/";
                global.msg[2]= "* ... then I\\'ll still be&  able to sell to monsters^1,&  I hope./%%";
            }
            if(global.flag[60] > 10)
                global.msg[1]= "* If all humans are like you^1,&  I think it\\'ll be a modest&  success!/%%";
            if(global.flag[60] > 40)
                global.msg[1]= "* If all humans are like you^1,&  I think it\\'ll be really&  popular!/%%";
        }
        mydialoguer= instance_create(0, 0, obj_dialoguer );
    }
}

/* */
/*  */
