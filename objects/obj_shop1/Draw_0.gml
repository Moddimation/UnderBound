glow+= 2;
glow2= floor(sin(glow / 30) * 2) / 32 + 0.125;
draw_sprite(spr_shop1_bg , 0, 0, 0);
draw_sprite_ext(spr_shop1_bgorange , 0, 0, 0, 1, 1, 0, 16777215, glow2);
if(murder == 0) draw_sprite(spr_shopkeeper1 , 0, shx, 0);
draw_set_color(16777215);
draw_rectangle(0, 120, 320, 240, 0);
if(menu == 1 || menu == 2) {
    draw_rectangle(210, 120, 320, minimenuy, 0);
    draw_set_color(0);
    if(minimenuy < 116) draw_rectangle(214, 120, 316, minimenuy + 4, 0);
    draw_set_color(16777215);
    wcheck= string(5 - global.wstrength);
    acheck= string(7 - global.adef);
    wchecks= " ";
    if(global.wstrength <= 5) wchecks= "+";
    if(global.wstrength > 5) wchecks= " ";
    achecks= " ";
    if(global.adef <= 7) achecks= "+";
    if(global.adef > 7) achecks= " ";
    if(menuc[1] == 0)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Weapon: 5AT#(" + wchecks + wcheck + " AT)#Slap \\'em."));
    if(menuc[1] == 1)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Armor: 7DF#(" + achecks + acheck + " DF)#It has abs#on it."));
    if(menuc[1] == 2)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 11HP x 2#Eat it twice!"));
    if(menuc[1] == 3)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 22HP#It\\'s my own#recipe."));
}
if(menu < 4) {
    draw_set_color(0);
    draw_rectangle(4, 124, 210, 236, 0);
    draw_rectangle(214, 124, 316, 236, 0);
} else  {
    draw_set_color(0);
    draw_rectangle(4, 124, 316, 236, 0);
}
draw_set_color(16777215);
if(menu == 0) {
    sell= 0;
    selling= 0;
    sidemessage= 0;
    menuc[1]= 0;
    menuc[2]= 0;
    menuc[3]= 0;
    menuc[4]= 0;
    if(!instance_exists(OBJ_WRITER )) {
        global.msg[0]= "\\\\E0* Take your time./*";
        mainmessage= 0 && global.flag[69] == 0;
        global.msg[0]= "\\\\E0* Hello^1, traveller^1.&* How can I help you?/*";
        if(murder == 1) global.msg[0]= "* But nobody came./*";
        instance_create(0, 110, OBJ_WRITER );
    } else  {
        if(keyboard_multicheck_pressed(1)) {
            // OBJ_WRITER
            with(782) {
                if(halt == 0) stringpos= string_length(originalstring);
                keyboard_clear(16);
            }
        }
    }
    menumax= 3;
    if(murder == 0) {
        draw_text(240, 130, string_hash_to_newline("Buy"));
        draw_text(240, 150, string_hash_to_newline("Sell"));
        draw_text(240, 170, string_hash_to_newline("Talk"));
        draw_text(240, 190, string_hash_to_newline("Exit"));
    }
    if(murder == 1) {
        draw_text(240, 130, string_hash_to_newline("Take"));
        draw_text(240, 150, string_hash_to_newline("Steal"));
        draw_text(240, 170, string_hash_to_newline("Read"));
        draw_text(240, 190, string_hash_to_newline("Exit"));
    }
    draw_sprite(spr_heartsmall , 0, 225, 135 + menuc[0] * 20);
    if(keyboard_multicheck_pressed(0)) {
        OBJ_WRITER.dfy= 1;
        keyboard_clear(13);
        if(menuc[0] == 0) menu= 1;
        if(menuc[0] == 1) {
            sell= 1;
            menu= 4;
        }
        if(menuc[0] == 2) {
            if(murder == 0) menu= 3;
            else  {
                menu= 4;
                sell= 7;
            }
        }
        if(menuc[0] == 3) {
            sell= 2;
            menu= 4;
        }
    }
}
if(menu == 1 || menu == 2) {
    if(murder == 0) {
        draw_text(30, 130, string_hash_to_newline("50G - Tough Glove"));
        draw_text(30, 150, string_hash_to_newline("50G - Manly Bandanna"));
        if(global.plot <= 100) draw_text(30, 170, string_hash_to_newline("15G - Bisicle"));
        if(global.plot > 100 && global.plot <= 121)
            draw_text(30, 170, string_hash_to_newline("30G - Bisicle"));
        if(global.plot > 121 && global.plot <= 199)
            draw_text(30, 170, string_hash_to_newline("45G - Bisicle"));
        if(global.plot > 199) draw_text(30, 170, string_hash_to_newline("70G - Bisicle"));
        draw_text(30, 190, string_hash_to_newline("25G - Cinnamon Bun"));
    }
    if(murder == 1) {
        draw_text(30, 130, string_hash_to_newline("00G - Tough Glove"));
        draw_text(30, 150, string_hash_to_newline("00G - Manly Bandanna"));
        draw_text(30, 170, string_hash_to_newline("00G - Bisicle"));
        draw_text(30, 190, string_hash_to_newline("00G - Cinnamon Bun"));
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(menu == 1) {
        menumax= 4;
        if(!instance_exists(OBJ_WRITER )) {
            if(sidemessage == 0)
                global.msg[0]= "\\\\E0What would&you like&to buy?/*";
            if(sidemessage == 1)
                global.msg[0]= "\\\\E5Thanks for&your&purchase./*";
            if(sidemessage == 2) global.msg[0]= "\\\\E0Just&looking?/*";
            if(sidemessage == 3)
                global.msg[0]= "\\\\E6That\\'s not&enough&money./*";
            if(sidemessage == 4)
                global.msg[0]= "\\\\E6You\\'re&carrying&too much./*";
            if(murder == 1) global.msg[0]= "/*";
            instance_create(210, 110, OBJ_WRITER );
        }
        draw_sprite(spr_heartsmall , 0, 15, 135 + menuc[1] * 20);
        if(keyboard_multicheck_pressed(0)) {
            menu= 2;
            OBJ_WRITER.dfy= 1;
            if(menuc[1] == menumax) menu= 0;
        } else  {
            if(keyboard_multicheck_pressed(1)) {
                menu= 0;
                OBJ_WRITER.dfy= 1;
            }
        }
        if(menu == 2) keyboard_clear(13);
        menuc[2]= 0;
    }
    if(menu == 2) {
        menumax= 1;
        if(murder == 0) {
            draw_text(230, 130, string_hash_to_newline("Buy it for"));
            draw_text(230, 145, string_hash_to_newline(string(itemcost[menuc[1]]) + "G ?"));
        }
        if(murder == 1) draw_text(230, 130, string_hash_to_newline("Take it."));
        draw_text(240, 170, string_hash_to_newline("Yes"));
        draw_text(240, 185, string_hash_to_newline("No"));
        draw_sprite(spr_heartsmall , 0, 225, 175 + menuc[2] * 15);
        if(keyboard_multicheck_pressed(1)) {
            menu= 1;
            keyboard_clear(16);
            sidemessage= 2;
        } else  {
            if(keyboard_multicheck_pressed(0)) {
                keyboard_clear(13);
                if(menuc[2] == 0) {
                    scr_cost(itemcost[menuc[1]]);
                    if(afford == 1) {
                        script_execute(scr_itemget , item[menuc[1]]);
                        if(noroom == 0) {
                            global.gold-= itemcost[menuc[1]];
                            sidemessage= 1;
                            snd_play(snd_buyitem );
                        }
                        if(noroom == 1) sidemessage= 4;
                    } else  sidemessage= 3;
                }
                if(menuc[2] == 1) sidemessage= 2;
                menu= 1;
            }
        }
    }
    if(menuc[1] != 4) {
        if(minimenuy > 40) minimenuy-= 3;
        if(minimenuy > 55) minimenuy-= 2;
        if(minimenuy > 80) minimenuy-= 4;
        if(minimenuy > 100) minimenuy-= 5;
    } else  {
        if(minimenuy < 120) minimenuy+= 20;
    }
}
if(menu == 3) {
    menumax= 4;
    if(global.flag[7] == 0) {
        draw_text(30, 130, string_hash_to_newline("Say hello"));
        draw_text(30, 150, string_hash_to_newline("What to do here"));
        draw_text(30, 170, string_hash_to_newline("Town history"));
        draw_text(30, 190, string_hash_to_newline("Your life"));
    } else  {
        draw_text(30, 130, string_hash_to_newline("What happened"));
        draw_text(30, 150, string_hash_to_newline("Human"));
        draw_text(30, 170, string_hash_to_newline("Ruins"));
        draw_text(30, 190, string_hash_to_newline("Future"));
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(!instance_exists(OBJ_WRITER )) {
        global.msg[0]= "\\\\E0Care to&chat?/*";
        instance_create(210, 110, OBJ_WRITER );
    }
    draw_sprite(spr_heartsmall , 0, 15, 135 + menuc[3] * 20);
    if(keyboard_multicheck_pressed(0)) {
        OBJ_WRITER.dfy= 1;
        if(menuc[3] < menumax) {
            sell= menuc[3] + 3;
            keyboard_clear(13);
            menu= 4;
        } else  menu= 0;
    } else  {
        if(keyboard_multicheck_pressed(1)) {
            keyboard_clear(16);
            menu= 0;
            OBJ_WRITER.dfy= 1;
        }
    }
}
if(menu < 4) {
    draw_text(230, 210, string_hash_to_newline(string(global.gold) + "G"));
    scr_itemroom();
    draw_text(280, 210, string_hash_to_newline(string(itemhold) + "/8"));
}
if(menu == 4) {
    if(sell == 0) menu= 0;
    if(!instance_exists(OBJ_WRITER ) && selling == 0) {
        if(sell == 1) {
            global.msg[0]= "\\\\E3* Huh^1?&* Sell somethin\\'^1?&* Does this look like a&  pawn shop?/";
            global.msg[1]= "\\\\E4* I don\\'t know how it works where&  you come from... but.../";
            global.msg[2]= "\\\\E0* If I started spending money&  on old branches and used&  bandages^1, I\\'d be out of business&  in a jiffy!/%%";
            soldo++;
            if(soldo > 1) {
                global.msg[0]= "\\\\E4* If you\\'re really hurtin\\' for&  cash^1, then maybe you could&  do some crowdfunding./";
                global.msg[1]= "* I hear people will pay for&  ANYTHING nowadays./%%";
            }
            if(murder == 1) {
                if(global.flag[255] == 0) {
                    global.msg[0]= "* You took 758G from behind the&  counter./%%";
                    global.gold+= 758;
                    global.flag[255]= 1;
                } else  global.msg[0]= "* Nothing left./%%";
            }
        }
        if(sell == 2) {
            global.msg[0]= "\\\\E0* Bye now^1!&* Come again sometime!/%%";
            if(murder == 1) global.msg[0]= "* .../%%";
        }
        if(sell == 3) {
            global.msg[0]= "\\\\E0* Hiya^1! Welcome to Snowdin^1!&* I can\\'t remember the last&  time I saw a fresh face around&  here./";
            global.msg[1]= "\\\\E4* Where did you come from^1?&* The capital?/";
            global.msg[2]= "\\\\E0* You don\\'t look like a tourist^1.&* Are you here by yourself?/%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E0* I mean^1, it happened to you^1,&  right?/";
                global.msg[1]= "* There was a strange flash of&  white light..^1.&* Then I felt my body being pulled&  into..^1. something./";
                global.msg[2]= "* Then^1, suddenly^1, everything was&  back to normal./%%";
            }
        }
        if(sell == 4) {
            global.msg[0]= "\\\\E0* You want to know what to do&  here in Snowdin?/";
            global.msg[1]= "\\\\E4* Grillby\\'s has food^1, and the&  library has information.../";
            global.msg[2]= "* If you\\'re tired^1, you can take&  a nap at the inn^1.&* It\\'s right next door ^1- my sister&  runs it./";
            global.msg[3]= "\\\\E0* And if you\\'re bored^1, you can&  sit outside and watch those wacky&  skeletons do their thing./";
            global.msg[4]= "\\\\E0* There\\'s two of \\'em..^1.&*\\\\E4 Brothers^1, I think^1.&* They just showed up one day&  and..^1.&*\\\\E0 ... asserted themselves./";
            global.msg[5]= "* The town has gotten a lot&  more interesting since then./%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E0* I heard that it was all \\'cause&  a human came through here./";
                global.msg[1]= "* A human..^1.&* I can hardly believe it!/";
                global.msg[2]= "* Well if they decide to stop&  in^1, I\\'ll be sure to give&  them a hero\\'s welcome./%%";
            }
        }
        if(sell == 5) {
            global.msg[0]= "\\\\E4* Think back to your history&  class.../";
            global.msg[1]= "\\\\E0* A long time ago^1, monsters lived&  in the RUINS back there in&  the forest./";
            global.msg[2]= "* Long story short^1, we all decided&  to leave the ruins and head&  for the end of the caverns./";
            global.msg[3]= "* Along the way^1, some fuzzy folk&  decided they liked the cold&  and set up camp in Snowdin./";
            global.msg[4]= "\\\\E6* Oh^1, and don\\'t think about&  trying to explore the RUINS.../";
            global.msg[5]= "\\\\E0* The door\\'s been locked for&  ages^1.&* So unless you\\'re a ghost&  or can burrow under the door^1,&  forget about it./%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E0* Didja hear^1?&* The RUINS have been opened up^1,&  and get this.../";
                global.msg[1]= "* They were opened from the&  INSIDE./";
                global.msg[2]= "* Apparently the Queen had been&  staying inside there for God&  knows how long./";
                global.msg[3]= "* Pretty unbelievable^1, huh!?/%%";
            }
        }
        if(sell == 6) {
            global.msg[0]= "\\\\E0* Life is the same as usual./";
            global.msg[1]= "\\\\E1* A little claustrophobic.../";
            global.msg[2]= "\\\\E2* But..^1. we all know deep down&  that freedom is coming^1, don\\'t we?/";
            global.msg[3]= "\\\\E2* As long as we got that hope^1, we&  can grit our teeth and face the&  same struggles^1, day after day.../";
            global.msg[4]= "\\\\E5* That\\'s life^1, ain\\'t it?/%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E0* Well^1, I suppose I\\'ll move&  my store to the overworld.../";
                global.msg[1]= "* ... haven\\'t planned much&  more than that^1, I\\'m afraid./%%";
            }
        }
        if(sell == 7) {
            global.msg[0]= "* (There\\'s a note here.)/";
            global.msg[1]= "* Please don\\'t hurt my family./%%";
        }
        instance_create(10, 110, OBJ_WRITER );
        selling= 1;
    }
    if(instance_exists(OBJ_WRITER ) && keyboard_multicheck_pressed(1)) {
        // OBJ_WRITER
        with(782) {
            if(halt == 0) stringpos= string_length(originalstring);
            keyboard_clear(16);
        }
    }
    if(selling == 1 && !instance_exists(OBJ_WRITER )) {
        if(sell == 2) {
            selling= 2;
            event_user(1);
        } else  {
            if(sell == 1 || sell == 7) menu= 0;
            else  menu= 3;
            sell= 0;
            selling= 0;
        }
    }
}
if(keyboard_check_pressed(40)) {
    menuc[menu]++;
    if(menuc[menu] > menumax) menuc[menu]= 0;
}
if(keyboard_check_pressed(38)) {
    menuc[menu]--;
    if(menuc[menu] < 0) menuc[menu]= menumax;
}

/* */
/*  */
