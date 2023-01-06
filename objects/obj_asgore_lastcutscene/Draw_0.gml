if(con == 107) {
    room_goto(322);
    exit;
} else  {
    if(con >= 4 && instance_exists(obj_btparent ) && obj_btparent.image_alpha > 0)
        obj_btparent.image_alpha-= 0.02;
    if(con >= 12 && instance_exists(obj_borderparent )) {
        obj_battlecontroller.drawbinfo= 0;
        // obj_hpname
        with(183) instance_destroy();
        if(obj_borderparent.image_alpha > 0)
            obj_borderparent.image_alpha-= 0.02;
    }
    if(asgore == 1) {
        if(remove == 0) {
            draw_sprite_ext(spr_asgore_kneel , 0, asgorex, asgorey, 2, 2, 0, 16777215, 1);
            draw_sprite_ext(spr_asgore_lastface , global.faceemotion, asgorex + 136, asgorey - 8, 2, 2, 0, 16777215, 1);
        }
        if(remove == 1) {
            ry+= 2;
            if(ry < 49)
                draw_sprite_part_ext(628, 0, 0, 0 + ry * 2, 183, 97 - ry * 2, asgorex, asgorey + ry * 4, 2, 2, 16777215, 1);
            if(ry < 27)
                draw_sprite_part_ext(629, global.faceemotion, 0, 0 + ry * 2, 53, 54 - ry * 2, asgorex + 136, asgorey - 8 + ry * 4, 2, 2, 16777215, 1);
        }
    }
    if(con == 2) {
        global.border= 0;
        SCR_BORDERSETUP();
        global.mnfight= -2;
        global.myfight= -2;
        // obj_dmgwriter
        with(189) instance_destroy();
        con= 3;
        alarm[4]= 50;
    }
    if(con == 4) {
        global.typer= 63;
        global.msc= 0;
        global.msg[0]= "Ah.../";
        global.msg[1]= ".../";
        global.msg[2]= "So that&is how&it is./";
        global.msg[3]= ".../%%";
        con= 5;
        saddude= 1;
        if(murder == 1) {
            global.msg[0]= "\\\\E3Why..^1.&You.../%%";
            con= 20;
        }
        scr_blcon_x(x + 300, y + 20);
        blcon.sprite_index= spr_blconsm ;
    }
    if(con == 5 && !instance_exists(OBJ_WRITER )) {
        con= 6;
        chokemusic= caster_load("music/chokedup.ogg");
        alarm[4]= 45;
    }
    if(con == 7) {
        caster_loop(chokemusic, 1, 1);
        saddude= 2;
        global.msg[0]= "I remember the day&after my son&died./";
        global.msg[1]= "The entire underground&was devoid of hope./";
        global.msg[2]= "The future had once&again been taken&from us by the&humans./";
        global.msg[3]= "In a fit of anger,&I declared war./";
        global.msg[4]= "I said that I would&destroy any human&that came here./";
        global.msg[5]= "I would use their&souls to become&godlike.../";
        global.msg[6]= "... and free us from&this terrible prison./";
        global.msg[7]= "Then, I would destroy&humanity.../";
        global.msg[8]= "And let monsters rule&the surface, in peace./";
        global.msg[9]= "Soon, the people\\'s&hopes returned./";
        global.msg[10]= "My wife, however,&became disgusted with&my actions./";
        global.msg[11]= "She left this place,&never to be seen&again./%%";
        scr_blcon_x(x + 270, y + 20);
        con= 8;
    }
    if(con == 8 && !instance_exists(OBJ_WRITER )) {
        con= 9;
        global.msg[0]= "Truthfully.../";
        global.msg[1]= "I do not want power./";
        global.msg[2]= "I do not want to&hurt anyone./";
        global.msg[3]= "I just wanted everyone&to have hope.../";
        global.msg[4]= "But.../";
        global.msg[5]= "I cannot take this&any longer./";
        global.msg[6]= "I just want to&see my wife./";
        global.msg[7]= "I just want to&see my child./";
        global.msg[8]= "Please..^1.&Young one.../";
        global.msg[9]= "This war has gone&on long enough./";
        global.msg[10]= "You have the power.../";
        global.msg[11]= "Take my soul, and&leave this cursed&place./%%";
        scr_blcon_x(x + 270, y + 20);
        con= 10;
    }
    if(con == 8 || con == 10 || con == 18 || con == 19)
        scr_textskip();
    if(con == 10 && !instance_exists(OBJ_WRITER )) {
        fightbt2= instance_create(global.idealborder[0] + 50, global.idealborder[2] + 50, obj_anybt );
        fightbt2.type= 0;
        fightbt2.sprite_index= spr_fightbt ;
        sparebt2= instance_create(global.idealborder[1] - 150, global.idealborder[2] + 50, obj_anybt );
        sparebt2.type= 1;
        sparebt2.sprite_index= spr_sparebt_bandage ;
        obj_heart.x= -999;
        fkhrt= instance_create(320, global.idealborder[2] + 60, obj_fakeheart );
        con= 11;
    }
    if(con == 15) {
        caster_free(-3);
        con= 16;
        alarm[4]= 30;
    }
    if(con == 17) {
        msb= caster_load("music/musicbox.ogg");
        global.msg[0]= ".../";
        global.msg[1]= "\\\\E0After everything I&have done to&hurt you.../";
        global.msg[2]= "\\\\E7You would rather&stay down here&and suffer.../";
        global.msg[3]= "\\\\E9Than live happily&on the surface?/";
        global.msg[4]= "\\\\E6.../%%";
        scr_blcon_x(x + 270, y + 20);
        con= 18;
    }
    if(con == 18 && !instance_exists(OBJ_WRITER )) {
        caster_loop(msb, 1, 1);
        global.msg[0]= "\\\\E1Human.../";
        global.msg[1]= "\\\\E7I promise you.../";
        global.msg[2]= "\\\\E7For as long as&you remain here.../";
        global.msg[3]= "\\\\E1My wife and I will&take care of you&as best we can./";
        global.msg[4]= "\\\\E2We can sit in&the living room^1,&telling stories.../";
        global.msg[5]= "\\\\E1Eating butterscotch&pie.../";
        global.msg[6]= "\\\\E2We could be&like.../";
        global.msg[7]= "\\\\E8Like a family.../%%";
        scr_blcon_x(x + 270, y + 20);
        con= 19;
        ini_open("undertale.ini");
        IK= ini_read_real("Flowey", "IK", 0);
        CHANGE= ini_read_real("Flowey", "CHANGE", 0);
        K= ini_read_real("Flowey", "K", 0);
        SK= ini_read_real("Flowey", "SK", 0);
        ini_close();
        q= 0;
        if(global.kills == 0 && CHANGE == 0 && SK == 0 && IK > 0)
            q= 1;
        if(K == 1 && SK == 0) q= 1;
        if(q == 1) con= 130;
    }
    if(con == 19 && !instance_exists(OBJ_WRITER )) {
        con= 18.5;
        alarm[4]= 50;
    }
    if(con == 19.5) con= 20;
    if(con == 20 && !instance_exists(OBJ_WRITER )) {
        global.faceemotion= 5;
        caster_free(-3);
        instance_create(asgorex + 190, asgorey - 30, obj_spinbullet_lastgen );
        con= 21;
        alarm[4]= 70;
    }
    if(con == 22) {
        obj_spinbullet_last.targetx= asgorex + 190;
        obj_spinbullet_last.targety= asgorey + 110;
        // obj_spinbullet_last
        with(491) {
            move_towards_point(targetx, targety, 2);
            friction= -0.5;
        }
        if(hearts == 1) {
            with(specbullet) speed= 0;
        }
        con= 23;
        alarm[4]= 20;
    }
    if(con == 24) {
        alarm[2]= 1;
        snd_play(snd_damage );
        shudder= 16;
        global.faceemotion= 4;
        if(hearts == 1) {
            ssx= specbullet.x;
            ssy= specbullet.y;
        }
        // obj_spinbullet_last
        with(491) instance_destroy();
        if(hearts == 1)
            specbullet= instance_create(ssx, ssy, obj_spinbullet_last );
        con= 25;
    }
    if(con == 30) {
        ddd= instance_create(x, y, obj_vaporized_new );
        with(ddd) scr_newvapordata(34);
        remove= 1;
        ddd.sprite_index= spr_asgore_kneeldeath ;
        ddd.ht= ht;
        ddd.wd= wd;
        room_speed= 10;
        con= 31;
        alarm[4]= 40;
    }
    if(con == 32) {
        room_speed= 30;
        asgore= 0;
        fh= instance_create(asgorex + 190, asgorey + 110, obj_asgfakeheart );
        con= 33;
        alarm[4]= 40;
    }
    if(con == 34) {
        with(specbullet)
            move_towards_point(obj_asgfakeheart.x, obj_asgfakeheart.y, 4);
        con= 35;
        alarm[4]= 35;
    }
    if(con == 36) {
        depth= 1;
        // obj_spinbullet_last
        with(491) instance_destroy();
        // obj_asgfakeheart
        with(490) event_user(0);
        con= 37;
        alarm[4]= 110;
        if(murder == 1) alarm[4]= 60;
    }
    if(con == 38) {
        global.faceemotion= 0;
        flowey= 1;
        fimg= 0;
        if(murder == 0) {
            con= 95;
            alarm[4]= 60;
            ini_open("undertale.ini");
            won= ini_read_real("General", "Won", 0);
            if(won > 0) {
                con= 119;
                alarm[4]= 60;
            }
        } else  con= 150;
    }
    if(con == 45) {
        caster_free(-3);
        con= 46;
        alarm[4]= 20;
    }
    if(con == 47) {
        global.flag[476]= 1;
        global.stretch= 1.5;
        strike= instance_create(asgorex + 195, asgorey + 150, obj_slice );
        con= 49;
        alarm[4]= global.damagetimer;
    }
    if(con == 50) {
        alarm[2]= 1;
        snd_play(snd_damage );
        shudder= 16;
        global.faceemotion= 6;
        con= 51;
    }
    if(con == 58) {
        ddd= instance_create(x, y, obj_vaporized_new );
        with(ddd) scr_newvapordata(34);
        remove= 1;
        ddd.sprite_index= spr_asgore_kneeldeath ;
        ddd.ht= ht;
        ddd.wd= wd;
        room_speed= 10;
        con= 59;
        alarm[4]= 40;
    }
    if(con == 60) {
        room_speed= 30;
        asgore= 0;
        fh= instance_create(asgorex + 180, asgorey + 100, obj_asgfakeheart );
        con= 62;
        alarm[4]= 90;
    }
    if(con == 63) {
        obj_asgfakeheart.shake= 0;
        spb= instance_create(asgorex + 190, asgorey - 15, obj_spinbullet_lastgen );
        spb.speed= 20;
        con= 64;
        alarm[4]= 50;
    }
    if(con == 65) {
        obj_spinbullet_last.targetx= obj_asgfakeheart.x + 2;
        obj_spinbullet_last.targety= obj_asgfakeheart.y + 2;
        // obj_spinbullet_last
        with(491) {
            move_towards_point(targetx, targety, 2);
            friction= -0.5;
        }
        con= 66;
        alarm[4]= 18;
    }
    if(con == 67) con= 36;
    if(flowey == 1) {
        draw_sprite_ext(spr_flowey_riseanim , fimg, 285, 150, 2, 2, 0, 16777215, 1);
        if(murder == 1 && fimg >= 8)
            draw_sprite_ext(spr_flowey_as , global.faceemotion, 285, 150, 2, 2, 0, 16777215, 1);
        if(fimg < 8) fimg+= 0.5;
    }
    if(flowey == 3) {
        draw_sprite_ext(spr_flowey_toskull , fimg2, 285, 150, 2, 2, 0, 16777215, 1);
        if(fimg2 < 4) fimg2+= 0.04;
    }
    if(flowey == 4) {
        draw_sprite_ext(spr_flowey_skulllaugh , fimg2, 285, 150, 2, 2, 0, 16777215, 1);
        fimg2+= 0.5;
    }
    if(con == 96) {
        global.msc= 0;
        global.typer= 66;
        if(hearts == 1) {
            global.msg[0]= "You&IDIOT./";
            ini_open("undertale.ini");
            truename= ini_read_real("Flowey", "truename", 0);
            ini_close();
            if(truename == 1) global.msg[0]= global.charname + "./";
            global.msg[1]= "You&haven\\'t&learned&a thing./%%";
        }
        if(hearts == 0) {
            global.msg[0]= "Hee&hee&hee./";
            global.msg[1]= "So you&finally&get it./%%";
            ini_open("undertale.ini");
            truename= ini_read_real("Flowey", "truename", 0);
            ini_close();
            if(truename == 1) {
                global.msg[0]= global.charname + "./";
                global.msg[1]= "So you&DO&recall./%%";
            }
        }
        scr_blcon_x(360, 140);
        obj_blconwideslave.sprite_index= spr_blconsm ;
        con= 97;
    }
    if(con == 97 && !instance_exists(OBJ_WRITER )) {
        global.msg[0]= "In&this&world.../%%";
        scr_blcon_x(360, 140);
        obj_blconwideslave.sprite_index= spr_blconsm ;
        con= 100;
    }
    if(con == 100) {
        rowdy= 1;
        radius= 400;
        angle= 0;
        i= 0;
        while(i < 6) {
            ang[i]= i * 60;
            xx= lengthdir_x(radius, ang[i]) + 320;
            yy= lengthdir_y(radius, ang[i]) + 170;
            heart[i]= instance_create(xx, yy, obj_spinbullet_last );
            heart[i].image_speed= 0;
            if(i == 0) heart[i].sprite_index= spr_heartyellow ;
            if(i == 1) heart[i].sprite_index= spr_heartorange ;
            if(i == 2) heart[i].sprite_index= spr_heartpurple ;
            if(i == 3) heart[i].sprite_index= spr_heartblue ;
            if(i == 4) heart[i].sprite_index= spr_heartaqua ;
            if(i == 5) heart[i].sprite_index= spr_heartgreen ;
            i++;
        }
        fimg2= 0;
        con= 99.5;
    }
    if(con == 99.5 && !instance_exists(OBJ_WRITER )) {
        cym= caster_load("music/cymbal.ogg");
        con= 102;
        flowey= 3;
        global.typer= 67;
        global.msg[0]= "It\\'s KILL or BE killed^4.%%";
        instance_create(120, 350, OBJ_WRITER );
    }
    if(con == 102 && !instance_exists(OBJ_WRITER )) {
        caster_play(cym, 1, 1);
        snd_play(snd_floweylaugh );
        flowey= 4;
        con= 103;
        wht= 0;
        alarm[4]= 2;
    }
    if(con == 104) {
        rowdy= 2;
        con= 105;
        with(heart[0]) secrettrick= 1;
        alarm[4]= 160;
    }
    if(con == 106) {
        white_blocker= scr_marker(-10, -10, 999);
        white_blocker.image_xscale= 900;
        white_blocker.image_yscale= 900;
        global.filechoice= 8;
        global.currentroom= 319;
        scr_saveprocess();
        if(file_exists("undertale.exe"))
            file_rename("undertale.exe", "flowey.exe");
        ini_open("undertale.ini");
        ini_write_real("FFFFF", "F", 1);
        ini_close();
        con= 107;
    }
    if(con == 120) {
        rowdy= 1;
        radius= 400;
        angle= 0;
        i= 0;
        while(i < 6) {
            ang[i]= i * 60;
            xx= lengthdir_x(radius, ang[i]) + 320;
            yy= lengthdir_y(radius, ang[i]) + 170;
            heart[i]= instance_create(xx, yy, obj_spinbullet_last );
            heart[i].image_speed= 0;
            if(i == 0) heart[i].sprite_index= spr_heartyellow ;
            if(i == 1) heart[i].sprite_index= spr_heartorange ;
            if(i == 2) heart[i].sprite_index= spr_heartpurple ;
            if(i == 3) heart[i].sprite_index= spr_heartblue ;
            if(i == 4) heart[i].sprite_index= spr_heartaqua ;
            if(i == 5) heart[i].sprite_index= spr_heartgreen ;
            i++;
        }
        fimg2= 0;
        con= 121;
    }
    if(con == 121) {
        global.msc= 0;
        global.typer= 6;
        if(won == 1) {
            global.msg[0]= "Hee hee hee^1.&Don\\'t worry./";
            global.msg[1]= "I know there\\'s no&REAL point in&fighting you./";
            global.msg[2]= "The human souls&would probably just&revolt again./";
            global.msg[3]= "So...!/%%";
            ini_open("undertale.ini");
            kill= ini_read_real("Flowey", "K", 0);
            if(kill == 1) {
                global.msg[0]= "Hee hee hee^1./";
                global.msg[1]= "Did you REALLY&think killing me&would make a&DIFFERENCE?/";
                global.msg[2]= "No./";
                global.msg[3]= "Every time you&load your SAVE^1,&I\\'ll come back./";
                global.msg[4]= "And every time you&try to get a&happy ending.../";
                global.msg[5]= "I\\'ll be there to&tear it away!/";
                global.msg[6]= "Ha ha ha!!!/%%";
            }
        }
        if(won == 2) global.msg[0]= "Well^1, let\\'s get&this over with./%%";
        if(won >= 3) global.msg[0]= ".../%%";
        con= 122;
        scr_blcon_x(390, 140);
        obj_blconwideslave.depth= -9000;
        OBJ_WRITER.depth= -90000;
    }
    if(con == 122 && !instance_exists(OBJ_WRITER )) {
        rowdy= 2;
        with(heart[0]) secrettrick= 1;
        cym= caster_load("music/cymbal.ogg");
        caster_play(cym, 1, 1);
        con= 123;
        wht= 0;
        alarm[4]= 150;
    }
    if(con == 130 && !instance_exists(OBJ_WRITER )) {
        con= 131;
        alarm[4]= 50;
    }
    if(con == 132 && !instance_exists(OBJ_WRITER )) {
        ini_open("undertale.ini");
        ini_write_real("Flowey", "SK", 1);
        ini_close();
        global.typer= 63;
        global.msc= 0;
        caster_stop(-3);
        global.msg[0]= "\\\\E2.../";
        global.msg[1]= "\\\\E0No^1.&That\\'s just a&fantasy^1, isn\\'t it?/";
        global.msg[2]= "\\\\E1Young one^1, when I&look at you.../";
        global.msg[3]= "\\\\E2I\\'m reminded of the&human that fell here&long ago.../";
        global.msg[4]= "\\\\E8You have the same&feeling of hope in&your eyes./";
        global.msg[5]= "\\\\E7There is an ancient&prophecy among our&people.../";
        global.msg[6]= "One day^1, a savior&will come from the&heavens./";
        global.msg[7]= "\\\\E1... I believe the&one that was&prophecied was you./";
        global.msg[8]= "Somewhere in the&world outside.../";
        global.msg[9]= "There must be a way&to free us from our&prison./";
        global.msg[10]= "\\\\E0It pains me to&give you this&responsiblity^1, but.../";
        global.msg[11]= "\\\\E0Please^1.&Take my soul..^1.&and seek the truth./%%";
        scr_blcon_x(x + 270, y + 20);
        con= 133;
        remdepth= depth;
    }
    if(con == 133 && !instance_exists(OBJ_WRITER )) {
        cut= caster_load("music/sfx_cinematiccut.ogg");
        caster_play(cut, 1, 0.9);
        alarm[4]= 80;
        con= 134;
        wht= 0;
        depth= -999999;
    }
    if(con == 134) {
        draw_set_color(16777215);
        draw_set_alpha(wht);
        wht+= 0.2;
        draw_rectangle(-10, -10, 999, 999, 0);
        draw_set_alpha(1);
        con= 134;
    }
    if(con == 135) {
        con= 136;
        snd_play(snd_damage );
        alarm[4]= 80;
    }
    if(con == 136) {
        draw_set_color(0);
        draw_set_alpha(1);
        draw_rectangle(-10, -10, 999, 999, 0);
    }
    if(con == 137) {
        depth= remdepth;
        global.faceemotion= 0;
        global.msc= 0;
        global.typer= 64;
        global.msg[0]= "\\\\E0Ha... ha.../";
        global.msg[1]= "\\\\E6I\\'m sorry.../";
        global.msg[2]= "I couldn\\'t give you&a simple^1, happy&ending.../";
        global.msg[3]= "But I believe your&freedom.../";
        global.msg[4]= "... is what my son.../";
        global.msg[5]= "\\\\E8... what ASRIEL would&have wanted./%%";
        scr_blcon_x(x + 270, y + 20);
        con= 138;
    }
    if(con == 138 && !instance_exists(OBJ_WRITER )) {
        con= 139;
        alarm[4]= 30;
    }
    if(con == 140) con= 58;
    if(rowdy == 1) {
        angle+= 4;
        if(radius > 180) radius-= 5;
        radius+= sin(angle / 16) * 2;
        i= 0;
        while(i < 6) {
            ang[i]= i * 60 + angle;
            xx= lengthdir_x(radius, ang[i]) + 320;
            yy= lengthdir_y(radius, ang[i]) + 170;
            heart[i].x= xx;
            heart[i].y= yy;
            i++;
        }
    }
    if(rowdy == 2) {
        angle++;
        if(radius > 0) radius-= 1.5;
        i= 0;
        while(i < 6) {
            ang[i]= i * 60 + angle;
            xx= lengthdir_x(radius, ang[i]) + 320;
            yy= lengthdir_y(radius, ang[i]) + 170;
            heart[i].x= xx;
            heart[i].y= yy;
            i++;
        }
    }
    if(con == 999) {
        draw_set_color(16777215);
        draw_set_alpha(wht);
        wht+= 0.01;
        draw_rectangle(-10, -10, 999, 999, 0);
        draw_set_alpha(1);
    }
    if(con == 124) {
        caster_free(-3);
        instance_create(0, 0, obj_persistentfader );
        room_goto(238);
    }
    if(con == 150) {
        global.msc= 0;
        global.typer= 6;
        global.msg[0]= "See^1?&I never betrayed&you^2! %";
        global.msg[1]= "It was all a&trick, see^2? %";
        global.msg[2]= "I was waiting to&kill him for you^2! %";
        global.msg[3]= "\\\\E1After all it\\'s me&your best friend^2! %";
        global.msg[4]= "\\\\E2I\\'m helpful, I can&be useful to you^1 %";
        global.msg[5]= "\\\\E1I promise I won\\'t&get in your way^1 %%";
        con= 151;
        scr_blcon_x(390, 140);
        obj_blconwideslave.depth= -9000;
        OBJ_WRITER.depth= -90000;
    }
    if(con == 151 && !instance_exists(OBJ_WRITER )) {
        global.msc= 0;
        global.typer= 102;
        global.msg[0]= "\\\\E2I can help..^1.&I can..^1.&I can..^2. %%";
        con= 152;
        scr_blcon_x(390, 140);
        obj_blconwideslave.depth= -9000;
        OBJ_WRITER.depth= -90000;
    }
    if(con == 152 && !instance_exists(OBJ_WRITER )) {
        global.msc= 0;
        global.typer= 103;
        global.msg[0]= "\\\\E3Please don\\'t&kill me./%%";
        con= 153;
        scr_blcon_x(390, 140);
        obj_blconwideslave.depth= -9000;
        OBJ_WRITER.depth= -90000;
    }
    if(con == 153 && !instance_exists(OBJ_WRITER )) {
        instance_create(285, 150, obj_floweygonk );
        instance_destroy();
    }
    exit;
}


/*  */
