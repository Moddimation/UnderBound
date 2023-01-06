if(global.plot == 0) {
    other.x= other.xprevious;
    other.y= other.yprevious;
    global.interact= 1;
    if(alter == 0) {
        ini_open("undertale.ini");
        g= ini_read_real("Flowey", "Met1", 0);
        truename= ini_read_real("Flowey", "truename", 0);
        IK= ini_read_real("Flowey", "IK", 0);
        NK= ini_read_real("Flowey", "NK", 0);
        global.currentsong= caster_load("music/flowey.ogg");
        caster_loop(global.currentsong, 1, 1);
        global.typer= 9;
        global.facechoice= 2;
        global.faceemotion= 0;
        global.msc= 200;
        spec= 0;
        if(g == 1) {
            global.msc= 0;
            global.msg[0]= "\\\\W* Howdy^2!&* I\\'m\\\\Y FLOWEY\\\\W.^2 &* \\\\YFLOWEY\\\\W the \\\\YFLOWER\\\\W!/";
            global.msg[1]= "* Hee hee hee.../";
            global.msg[2]= "* Why\\'d you make me&  introduce myself?/";
            global.msg[3]= "* It\\'s rude to act&  like you don\\'t&  know who I am./";
            global.msg[4]= "* Someone ought to teach&  you proper manners./";
            global.msg[5]= "* I guess little old me&  will have to do./";
            global.msg[6]= "* Ready^2?&* Here we go!/%%";
        }
        if(g > 1) {
            global.msc= 0;
            global.msg[0]= "* Don\\'t you have anything&  better to do?/%%";
        }
        conversation= 1;
        if(NK > 0 || IK > 0 || truename > 0) spec= 1;
        if(spec == 1) {
            global.msc= 0;
            ini_write_real("Flowey", "Alter", 1);
            global.msg[0]= "* Error/%%";
            if(truename == 1) {
                global.msg[0]= "* Really^1, " + global.charname + "?/";
                global.msg[1]= "\\\\E5* Well^1, do what you&  will./";
                global.msg[2]= "\\\\E4* I\\'ll be waiting for&  you!/%%";
            }
            if(IK > 0) {
                global.msg[0]= "\\\\E0* Hey^1.&* Remember./";
                global.msg[1]= "\\\\E2* DON\\'T kill anyone./";
                global.msg[2]= "\\\\E2* .../";
                global.msg[3]= "\\\\E1* I can\\'t believe this&  is a REAL thing I&  have to remind you./";
                global.msg[4]= "\\\\E0* Hee hee hee.../";
                global.msg[5]= "* Good luck!/%%";
            }
            if(NK > 0) {
                global.msg[0]= "* Remember.../";
                global.msg[1]= "\\\\E1* THIS time^1, you\\'ve&  GOT to become friends&  with everyone./";
                global.msg[2]= "\\\\E2* OK?/";
                global.msg[3]= "\\\\E5* If you DON\\'T^1, you\\'ll&  be miserable FOREVER./";
                global.msg[4]= "\\\\E1* And we wouldn\\'t want&  THAT^1, would we?/";
                global.msg[5]= "\\\\E0* No..^1.&* We just want you&  to be happy^1, right?/";
                global.msg[6]= "* Good luck. /%%";
            }
            conversation= 19;
            alarm[4]= 5;
        }
        ini_write_real("Flowey", "Met1", g + 1);
        ini_close();
        if(!instance_exists(obj_dialoguer )) instance_create(0, 0, obj_dialoguer );
    } else  {
        global.plot= 1;
        conversation= 23;
    }
}


/*  */
