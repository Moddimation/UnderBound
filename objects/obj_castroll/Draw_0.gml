if(global.cast_type == 0) {
    timer++;
    if(timer > 3) {
        draw_set_color(16777215);
        draw_set_font(2);
        draw_set_halign(1);
        draw_sprite_ext(spr_undertaletitle , 0, 0, -100, 2, 2, 0, 16777215, 1);
        draw_text_transformed(320, 280, string_hash_to_newline("(( CAST ))"), 3, 3, 0);
    }
    if(timer > 244) active= 1;
}
if(active == 1) __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (2) );
if(active == 1) {
    if(global.cast_type == 0 && active == 1) {
        g= 0;
        draw_set_halign(1);
        draw_set_font(2);
        draw_set_color(16777215);
        mon= froggit;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("FROGGIT"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[130] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Pondering#Life"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Professional#Frog"), 2, 2, 0);
        }
        draw_set_color(16777215);
        draw_text_transformed(430, 530, string_hash_to_newline("WHIMSUN"), 3, 3, 0);
        draw_text_transformed(430, 570, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[131] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, 710, string_hash_to_newline("Still A Bit#Guilty"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, 710, string_hash_to_newline("Braver Every#Day "), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= moldsmal;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("MOLDSMAL"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[132] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Found a New#Cave"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Backup Dancer"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= loox;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("LOOX"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Temmie"), 1, 1, 0);
        if(global.flag[133] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Slightly#Bully-like"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Reformed#Bully"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= vegetoid;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("VEGETOID"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Toby & Temmie"), 1, 1, 0);
        if(global.flag[134] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Pushy Grocer"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Popular#Nutritionist"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= migosp;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("MIGOSP"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[135] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Dedicated#Yesman"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Casually#Enjoys Life"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= napstablook;
        draw_text_transformed(330, mon.y - 70, string_hash_to_newline("NAPSTABLOOK"), 3, 3, 0);
        draw_text_transformed(330, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[36] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(330, mon.y + 210, string_hash_to_newline("Zzzzzzz..."), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(330, mon.y + 210, string_hash_to_newline("Spooky DJ"), 2, 2, 0);
        }
        draw_set_halign(0);
        if(__view_get( e__VW.YView, 0 ) > 1520 && __view_get( e__VW.YView, 0 ) < 1540) exper= 0;
        if(__view_get( e__VW.YView, 0 ) > 1540) {
            exper+= 0.2;
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (exper) );
            if(__view_get( e__VW.YView, 0 ) > napstablook.y + 300) room_goto(279);
        }
    }
    if(global.cast_type == 1) {
        g= 0;
        draw_set_alpha(1);
        draw_set_halign(1);
        draw_set_font(2);
        draw_set_color(16777215);
        draw_set_color(16777215);
        mon= snowdrake;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("SNOWDRAKE"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Magnolia Porter"), 1, 1, 0);
        if(global.flag[136] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Still Looking#For Laughs"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Semi-successful#Comedian"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= icecap;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("ICECAP"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Magnolia Porter"), 1, 1, 0);
        if(global.flag[137] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Thinking#About Its Hat"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Fashion#Designer"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= gyftrot;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("GYFTROT"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Magnolia Porter (and Toby???)"), 1, 1, 0);
        if(global.flag[138] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Finding Peace#And Quiet"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Christmas#Display"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= doggo;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("DOGGO"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[139] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Believes In The#Almighty Stick"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Has His Own#Seeing Eye Dog"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= dogamy;
        draw_text_transformed(320, mon.y - 70, string_hash_to_newline("DOGAMY & DOGARESSA"), 3, 3, 0);
        draw_text_transformed(320, mon.y - 30, string_hash_to_newline("by Toby...?"), 1, 1, 0);
        draw_set_color(65535);
        if(global.flag[140] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(320, mon.y + 210, string_hash_to_newline("Still Thinking#About That Stick"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(320, mon.y + 210, string_hash_to_newline("Finally No. 1 Nose#Nuzzle Champions"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= lesserdog;
        draw_text_transformed(190, mon.y - 70, string_hash_to_newline("LESSER DOG"), 3, 3, 0);
        draw_text_transformed(190, mon.y - 30, string_hash_to_newline("by Temmie & Toby"), 1, 1, 0);
        if(global.flag[141] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(190, mon.y + 210, string_hash_to_newline("Searching For#Affection"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(190, mon.y + 210, string_hash_to_newline("Found A Loving#Owner"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= greaterdog;
        draw_text_transformed(450, mon.y - 70, string_hash_to_newline("GREATER DOG"), 3, 3, 0);
        draw_text_transformed(450, mon.y - 30, string_hash_to_newline("by Toby & Temmie"), 1, 1, 0);
        if(global.flag[142] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(450, mon.y + 210, string_hash_to_newline("Unaware of Life\\'s#Changes"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(450, mon.y + 210, string_hash_to_newline("Excited by Life\\'s#Changes"), 2, 2, 0);
        }
        draw_set_halign(0);
        if(__view_get( e__VW.YView, 0 ) > 1920 && __view_get( e__VW.YView, 0 ) < 1940) exper= 0;
        if(__view_get( e__VW.YView, 0 ) > 1940) {
            vol-= 0.02;
            caster_set_volume(-3, vol);
            exper+= 0.5;
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) - (exper) );
            if(__view_get( e__VW.XView, 0 ) < -600) room_goto(280);
        }
    }
    if(global.cast_type == 2) {
        g= 0;
        draw_set_alpha(1);
        draw_set_halign(1);
        draw_set_font(2);
        draw_set_color(16777215);
        draw_set_color(16777215);
        mon= aaron;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("AARON"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Temmie (reluctantly)"), 1, 1, 0);
        if(global.flag[95] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Still Flexing"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Paranormal#Investigator"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= moldbygg;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("MOLDBYGG"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[144] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Wistfully Adjusting#to City Life"), 1.5, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Idyllic Life#on the Beach"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= woshua;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("WOSHUA"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("Inspired by OMOCAT"), 1, 1, 0);
        if(global.flag[145] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Normal#Janitor"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Legendary#Janitor"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= temmie;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("TEMMIE"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("Temmie"), 1, 1, 0);
        if(global.flag[146] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Temmie"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Temmie"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= maddummy;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("MAD DUMMY"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[147] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Changed Name to#Angry Dummy"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Calmed Down...#Just a Bit"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= shyren;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("SHYREN"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[81] != 2) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Taking Piano#Lessons Again"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Released Her First Hit Single,#" + chr(ord("\"")) + "When You Say Goodbye#It\\'s Like Magical Bullets#Are Slowly Flying Out of#Your Mouth And Hitting Me" + chr(ord("\"")) + ""), 1, 1, 0);
        }
        draw_set_halign(0);
        if(__view_get( e__VW.YView, 0 ) > 1220 && __view_get( e__VW.YView, 0 ) < 1240) exper= 0;
        if(__view_get( e__VW.YView, 0 ) > 1240) {
            vol-= 0.02;
            caster_set_volume(-3, vol);
            exper+= 0.2;
            __view_set( e__VW.YView, 0, __view_get( e__VW.YView, 0 ) + (exper) );
            if(__view_get( e__VW.YView, 0 ) > shyren.y + 300) room_goto(281);
        }
    }
    if(global.cast_type == 3) {
        g= 0;
        draw_set_alpha(1);
        draw_set_halign(1);
        draw_set_font(2);
        draw_set_color(16777215);
        draw_set_color(16777215);
        mon= vulkin;
        draw_text_transformed(210, mon.y - 70 - 100, string_hash_to_newline("VULKIN"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30 - 100, string_hash_to_newline("by Magnolia Porter"), 1, 1, 0);
        if(global.flag[148] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210 - 100, string_hash_to_newline("Strolling#Happily"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210 - 100, string_hash_to_newline("Encouraging#Space Heater"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= tsunderplane;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("TSUNDERPLANE"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[149] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("New Student#At School"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Finally Confesses#(What!? I don\\'t!!)"), 1.5, 2, 0);
        }
        draw_set_color(16777215);
        mon= pyrope;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("PYROPE"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[150] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Continually#In Trouble"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Candle In The#World\\'s Largest#Birthday Cake"), 1.5, 1.5, 0);
        }
        draw_set_color(16777215);
        mon= muffet;
        draw_text_transformed(430, mon.y - 70, string_hash_to_newline("MUFFET"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 30, string_hash_to_newline("by Michelle"), 1, 1, 0);
        draw_set_color(65535);
        draw_text_transformed(430, mon.y + 210, string_hash_to_newline("Spider Success#With a New Bakery"), 2, 2, 0);
        draw_set_color(16777215);
        mon= knighta;
        draw_text_transformed(320, mon.y - 70, string_hash_to_newline("ROYAL GUARDS"), 3, 3, 0);
        draw_text_transformed(320, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        draw_set_color(65535);
        draw_text_transformed(320, mon.y + 210, string_hash_to_newline("Use Your#Imagination"), 2, 2, 0);
        draw_set_color(16777215);
        mon= finalfroggit;
        draw_text_transformed(210, mon.y - 90, string_hash_to_newline("FINAL FROGGIT"), 2, 3, 0);
        draw_text_transformed(210, mon.y - 50, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[151] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Searching For#Life\\'s Meaning"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 110, string_hash_to_newline("Giving Life#Its Own Meaning"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= whimsalot;
        draw_text_transformed(430, mon.y - 90, string_hash_to_newline("WHIMSALOT"), 3, 3, 0);
        draw_text_transformed(430, mon.y - 50, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[152] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("Fighting For#The Future"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(430, mon.y + 110, string_hash_to_newline("The Long Battle#Finally Ending..."), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= astigmatism;
        draw_text_transformed(320, mon.y - 70, string_hash_to_newline("ASTIGMATISM"), 3, 3, 0);
        draw_text_transformed(320, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[153] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(320, mon.y + 110, string_hash_to_newline("Still A Big#Bully"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(320, mon.y + 110, string_hash_to_newline("Domineering#Glasses Seller"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= madjick;
        draw_text_transformed(210, mon.y - 70, string_hash_to_newline("MADJICK"), 3, 3, 0);
        draw_text_transformed(210, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[154] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Learning#Bowling"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(210, mon.y + 210, string_hash_to_newline("Street#Magician"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= knightknight;
        draw_text_transformed(460, mon.y - 70, string_hash_to_newline("KNIGHT KNIGHT"), 3, 3, 0);
        draw_text_transformed(460, mon.y - 30, string_hash_to_newline("by Toby"), 1, 1, 0);
        if(global.flag[155] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(460, mon.y + 210, string_hash_to_newline("Retail Job"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(460, mon.y + 210, string_hash_to_newline("Taking a Well-#Deserved Nap"), 2, 2, 0);
        }
        draw_set_color(16777215);
        mon= amalgamate1;
        draw_text_transformed(320, mon.y - 70, string_hash_to_newline("AMALGAMATES"), 3, 3, 0);
        draw_text_transformed(320, mon.y - 30, string_hash_to_newline("??????"), 1, 1, 0);
        if(global.flag[156] == 0) {
            draw_set_color(16777215);
            draw_text_transformed(320, mon.y + 210, string_hash_to_newline("Living With#Their Families,#Thinking About#Sticks"), 2, 2, 0);
        } else  {
            draw_set_color(65535);
            draw_text_transformed(320, mon.y + 210, string_hash_to_newline("Living With#Their Families"), 2, 2, 0);
        }
        draw_set_halign(0);
        if(__view_get( e__VW.YView, 0 ) > 3000 && __view_get( e__VW.YView, 0 ) < 3040) exper= 0;
        if(__view_get( e__VW.YView, 0 ) > 3040) {
            exper+= 0.5;
            __view_set( e__VW.XView, 0, __view_get( e__VW.XView, 0 ) + (exper) );
            vol-= 0.02;
            caster_set_volume(-3, vol);
            if(__view_get( e__VW.XView, 0 ) > 640) room_goto(282);
        }
    }
}


/*  */
