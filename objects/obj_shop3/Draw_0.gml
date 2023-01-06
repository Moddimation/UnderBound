draw_set_color(16777215);
draw_rectangle(0, 120, 320, 240, 0);
if(menu == 1 || menu == 2) {
    draw_rectangle(210, 120, 320, minimenuy, 0);
    draw_set_color(0);
    if(minimenuy < 116) draw_rectangle(214, 120, 316, minimenuy + 4, 0);
    draw_set_color(16777215);
    wcheck= string(12 - global.wstrength);
    acheck= string(12 - global.adef);
    wchecks= " ";
    if(global.wstrength <= 12) wchecks= "+";
    if(global.wstrength > 12) wchecks= " ";
    achecks= " ";
    if(global.adef <= 12) achecks= "+";
    if(global.adef > 12) achecks= " ";
    if(menuc[1] == 0)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 17HP#Has a big#bite out of#it."));
    if(menuc[1] == 3) {
        if(global.flag[444] == 0)
            draw_text(224, minimenuy + 14, string_hash_to_newline("?????#Probably#to someone\\'s#house LOL"));
        else  draw_text(224, minimenuy + 14, string_hash_to_newline("SOLD OUT!"));
    }
    if(menuc[1] == 2) {
        if(global.flag[443] == 0)
            draw_text(224, minimenuy + 14, string_hash_to_newline("Armor: 12DF#(" + achecks + acheck + " DF)#ATTACK up#when worn."));
        else  draw_text(224, minimenuy + 14, string_hash_to_newline("SOLD OUT!"));
    }
    if(menuc[1] == 1) {
        if(global.flag[442] == 0)
            draw_text(224, minimenuy + 14, string_hash_to_newline("Weapon: 12AT#(" + wchecks + wcheck + " AT)#Bullets NOT#included."));
        else  draw_text(224, minimenuy + 14, string_hash_to_newline("SOLD OUT!"));
    }
}
if(menu < 4) {
    draw_set_color(0);
    if(menu == 0) {
        draw_rectangle(4, 124, 104, 236, 0);
        draw_rectangle(108, 124, 210, 236, 0);
    } else  draw_rectangle(4, 124, 210, 236, 0);
    draw_rectangle(214, 124, 316, 236, 0);
} else  {
    draw_set_color(0);
    draw_rectangle(4, 124, 156, 236, 0);
    draw_rectangle(160, 124, 316, 236, 0);
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
        global.msg[0]= "* Don\\'t be shy now./*";
        mainmessage= 0 && global.flag[69] == 0;
        global.msg[0]= "* Hey^1!&* Check it&  out!/*";
        if(murder == 1) global.msg[0]= "* But^1, like./*";
        brattywriter= instance_create(-10, 110, OBJ_WRITER );
        brattywriter.mycolor= 13941759;
        global.msg[0]= "* Yeah!&* Check it&  out!/*";
        if(murder == 1) global.msg[0]= "* Nobody&  came and&  stuff./*";
        cattywriter= instance_create(93, 110, OBJ_WRITER );
        cattywriter.mycolor= 16759772;
        catty.face= 0;
        bratty.face= 0;
        catty.armexp= 0;
        bratty.armexp= 0;
        global.faceemotion= 0;
        global.flag[20]= 0;
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
    } else  {
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
                sell= 7;
                menu= 4;
            }
        }
        if(menuc[0] == 3) {
            sell= 2;
            menu= 4;
        }
    }
}
if(menu == 1 || menu == 2) {
    if(murder == 0) draw_text(30, 130, string_hash_to_newline(" 25G - Junk Food"));
    if(murder == 1) draw_text(30, 130, string_hash_to_newline(" 00G - Junk Food"));
    if(global.flag[442] == 0) {
        if(murder == 0) draw_text(30, 150, string_hash_to_newline("350G - Empty Gun"));
        else  draw_text(30, 150, string_hash_to_newline("000G - Empty Gun"));
    } else  {
        draw_set_color(8421504);
        draw_text(30, 150, string_hash_to_newline("--- SOLD OUT ---"));
        draw_set_color(16777215);
    }
    if(global.flag[443] == 0) {
        if(murder == 0) draw_text(30, 170, string_hash_to_newline("350G - Cowboy Hat"));
        else  draw_text(30, 170, string_hash_to_newline("000G - Cowboy Hat"));
    } else  {
        draw_set_color(8421504);
        draw_text(30, 170, string_hash_to_newline("--- SOLD OUT ---"));
        draw_set_color(16777215);
    }
    if(global.flag[444] == 0) {
        if(murder == 0) draw_text(30, 190, string_hash_to_newline("600G - Mystery Key"));
        else  draw_text(30, 190, string_hash_to_newline("000G - Mystery Key"));
    } else  {
        draw_set_color(8421504);
        draw_text(30, 190, string_hash_to_newline("--- SOLD OUT ---"));
        draw_set_color(16777215);
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(menu == 1) {
        menumax= 4;
        if(!instance_exists(OBJ_WRITER )) {
            if(murder == 0) {
                if(sidemessage == 0)
                    global.msg[0]= "\\\\E0You should&buy ALL&our stuff!/*";
                if(sidemessage == 1)
                    global.msg[0]= "\\\\E4Bratty!&We\\'re&gonna&be rich!/*";
                if(sidemessage == 2)
                    global.msg[0]= "\\\\E0So are&you gonna&buy it??/*";
                if(sidemessage == 3)
                    global.msg[0]= "\\\\E0You need&WAY more&money./*";
                if(sidemessage == 4)
                    global.msg[0]= "\\\\E0You have&TOO many&items!!!/*";
                if(sidemessage == 5)
                    global.msg[0]= "\\\\E4We\\'re all&$$$$$old&out!&Mee-YOW!/*";
            } else  global.msg[0]= "/*";
            cattywriter= instance_create(210, 110, OBJ_WRITER );
            cattywriter.mycolor= 16759772;
        }
        draw_sprite(spr_heartsmall , 0, 15, 135 + menuc[1] * 20);
        if(keyboard_multicheck_pressed(0)) {
            soldout= 0;
            if(menuc[1] == 1 && global.flag[442] == 1) soldout= 1;
            if(menuc[1] == 2 && global.flag[443] == 1) soldout= 1;
            if(menuc[1] == 3 && global.flag[444] == 1) soldout= 1;
            if(soldout == 0) menu= 2;
            else  sidemessage= 5;
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
        draw_text(230, 130, string_hash_to_newline("Buy it for"));
        draw_text(230, 145, string_hash_to_newline(string(itemcost[menuc[1]]) + "G ?"));
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
                            snd_play(snd_buyitem );
                            sidemessage= 1;
                            if(menuc[1] == 1) global.flag[442]= 1;
                            if(menuc[1] == 2) global.flag[443]= 1;
                            if(menuc[1] == 3) global.flag[444]= 1;
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
    if(global.flag[7] != 1) {
        if(global.flag[437] < 2) draw_text(30, 130, string_hash_to_newline("About you two"));
        if(global.flag[437] == 2) {
            draw_set_color(65535);
            draw_text(30, 130, string_hash_to_newline("Burgerpants (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[437] == 4) {
            draw_set_color(65535);
            draw_text(30, 130, string_hash_to_newline("More Burgerpants (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[437] == 5) draw_text(30, 130, string_hash_to_newline("About you two"));
        if(global.flag[437] == 6) {
            draw_set_color(65535);
            draw_text(30, 130, string_hash_to_newline("B.Pants Hangout? (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[437] == 7) {
            draw_set_color(65535);
            draw_text(30, 130, string_hash_to_newline("That Kind of Guy (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[437] >= 8) draw_text(30, 130, string_hash_to_newline("About you two"));
        if(global.flag[405] == 0) draw_text(30, 150, string_hash_to_newline("About your wares"));
        if(global.flag[405] == 1) {
            draw_set_color(65535);
            draw_text(30, 150, string_hash_to_newline("Origin of wares (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[405] == 2) {
            draw_set_color(65535);
            draw_text(30, 150, string_hash_to_newline("Origin of garbage (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[405] == 3) draw_text(30, 150, string_hash_to_newline("Origin of garbage"));
        if(global.flag[406] == 0) draw_text(30, 170, string_hash_to_newline("About Mettaton"));
        if(global.flag[406] == 1) {
            draw_set_color(65535);
            draw_text(30, 170, string_hash_to_newline("Origin of Mettaton (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[406] == 2) {
            draw_set_color(16777215);
            draw_text(30, 170, string_hash_to_newline("About Mettaton (OLD???)"));
            draw_set_color(16777215);
        }
        if(global.flag[407] == 0) draw_text(30, 190, string_hash_to_newline("About Alphys"));
        if(global.flag[407] == 1) {
            draw_set_color(65535);
            draw_text(30, 190, string_hash_to_newline("Royal Scientist (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[407] == 2) {
            draw_set_color(65535);
            draw_text(30, 190, string_hash_to_newline("About ASGORE (NEW)"));
            draw_set_color(16777215);
        }
        if(global.flag[407] == 3) {
            draw_set_color(16777215);
            draw_text(30, 190, string_hash_to_newline("About ASGORE"));
            draw_set_color(16777215);
        }
    }
    if(global.flag[7] == 1) {
        draw_text(30, 130, string_hash_to_newline("Freedom"));
        draw_text(30, 150, string_hash_to_newline("I\\'m a human"));
        draw_text(30, 170, string_hash_to_newline("Future"));
        draw_text(30, 190, string_hash_to_newline("Do You Like Cats"));
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(!instance_exists(OBJ_WRITER )) {
        global.faceemotion= 0;
        global.flag[20]= 0;
        catty.face= 0;
        bratty.face= 0;
        catty.armexp= 0;
        bratty.armexp= 0;
        global.msg[0]= "So, like,&what\\'s up?/*";
        brattywriter= instance_create(210, 110, OBJ_WRITER );
        brattywriter.mycolor= 13941759;
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
            if(murder == 0) {
                scr_itemcheck(40);
                if(haveit == 0) {
                    global.msg[0]= "* Thanks^1, but we^1,&  like^1, don\\'t&  really need&  anything./*";
                    event_user(2);
                    con= 75;
                }
                if(haveit == 1) {
                    con= 81;
                    global.msg[0]= "\\\\M2* Oh my God^1.&* Is that a&  glamburger?/*";
                    event_user(2);
                }
            } else  {
                if(global.flag[256] == 0) {
                    global.flag[256]= 1;
                    global.gold+= 5;
                    global.msg[0]= "* Stole 5G&  from the&  till./%%";
                    event_user(2);
                } else  {
                    global.msg[0]= "* The till&  is empty./%%";
                    event_user(2);
                }
            }
        }
        if(sell == 2) {
            if(murder == 0) {
                global.msg[0]= "* Like^1, see&  you later!  /%%";
                event_user(2);
                global.msg[0]= "* Like^1, later&  and stuff!/%%";
                event_user(3);
            } else  {
                global.msg[0]= "* .../%%";
                event_user(2);
                global.msg[0]= "* .../%%";
                event_user(3);
            }
        }
        if(sell == 3) {
            if(global.flag[437] != 2 && global.flag[437] != 4 && global.flag[437] != 6 && global.flag[437] != 7 && global.flag[7] != 1) {
                con= 4;
                global.msg[0]= "* I\\'m Bratty^1, and&  this is my&  best friend^1,&  Catty./%%";
                brattywriter= instance_create(-10, 110, OBJ_WRITER );
                brattywriter.mycolor= 13941759;
                global.msg[0]= "* I\\'m Catty^1, and&  this is my&  best friend^1,&  Bratty./%%";
                cattywriter= instance_create(145, 110, OBJ_WRITER );
                cattywriter.mycolor= 16759772;
            } else  {
                if(global.flag[7] == 0) {
                    if(global.flag[437] == 7) {
                        global.flag[437]= 8;
                        global.msg[0]= "\\\\M3* Well^1, that kind&  of guy.../";
                        global.msg[1]= "\\\\M5* You hang out&  with him once^1,&  then he wants&  to hang out.../";
                        global.msg[2]= "\\\\M2* All^1.&* The^1.&* Time./%%";
                        event_user(2);
                        con= 160;
                    }
                    if(global.flag[437] == 6) {
                        global.flag[437]= 7;
                        global.msg[0]= "\\\\M5* Oh^1, uh.../*";
                        event_user(2);
                        con= 140;
                    }
                    if(global.flag[437] == 4) {
                        global.flag[437]= 5;
                        global.msg[0]= "\\\\M4* OK^1, like^1,&  the annoying&  thing is.../*";
                        event_user(2);
                        con= 120;
                    }
                    if(global.flag[437] == 2) {
                        global.flag[437]= 4;
                        global.msg[0]= "\\\\M2* Oh^1, that guy&  from the&  store^1?&*\\\\M4 Yuck^1, what a&  creep./*";
                        event_user(2);
                        con= 110;
                    }
                } else  {
                    global.msg[0]= "\\\\M0* So^1, we\\'re&  like^1,&  totally&  free now^1,&  huh?/*";
                    event_user(2);
                    con= 170;
                }
            }
        }
        if(sell == 4) {
            if(global.flag[7] == 0) {
                if(global.flag[405] == 2 || global.flag[405] == 3) {
                    global.msg[0]= "* Where do we&  get the&  garbage?/";
                    global.msg[1]= "\\\\M4* Like^1, the&  garbage store^1,&  duh!!!/%%";
                    event_user(2);
                    con= 22;
                }
                if(global.flag[405] == 1) {
                    global.msg[0]= "* I mean^1, like^1,&  where does&  anyone get guns^1,&  or food^1, or.../*";
                    event_user(2);
                    con= 16;
                }
                if(global.flag[405] == 0) {
                    con= 10;
                    global.msg[0]= "* The stuff&  inside^1, is&  like.../*";
                    event_user(2);
                }
                if(global.flag[405] == 2) global.flag[405]= 3;
                if(global.flag[405] == 1) global.flag[405]= 2;
                if(global.flag[405] == 0) global.flag[405]= 1;
            } else  {
                global.msg[0]= "\\\\M2* Oh^1, oops^1,&  really?/";
                global.msg[1]= "\\\\M3* Uh^1, well^1,&  when we&  said^1, um.../";
                global.msg[2]= "* We were&  hyped for the&  destruction&  of humanity.../";
                global.msg[3]= "* We were^1,&  just^1, like^1,&  joking^1, you&  know?/%%";
                event_user(2);
                con= 180;
            }
        }
        if(sell == 5) {
            if(global.flag[7] == 0) {
                if(global.flag[406] == 1) {
                    global.msg[0]= "* So^1, like^1,&  Dr. Alphys&  built Mettaton^1,&  right?/*";
                    event_user(2);
                    con= 40;
                }
                if(global.flag[406] == 0 || global.flag[406] == 2) {
                    global.msg[0]= "\\\\M6* Oh my God^1.&* Mettaton./";
                    global.msg[1]= "\\\\M6* He\\'s like..^1.&* My robot&  husband.          /";
                    global.msg[2]= "\\\\M4* I think we\\'re&  like..^1. both&  going to marry&  him./%%";
                    event_user(2);
                    global.msg[0]= "\\\\E2* Oh my GOD^1,&* METTATON./";
                    global.msg[1]= "\\\\E2* Actually he\\'s&  like..^1.&* MY robot&  husband./";
                    global.msg[2]= "* We\\'re both&  like^1, ALREADY&  married to&  him.      /";
                    global.msg[3]= "\\\\E6* He just^1, like^1,&  doesn\\'t know&  it yet./%%";
                    event_user(3);
                }
                if(global.flag[406] == 1) global.flag[406]= 2;
                if(global.flag[406] == 0) global.flag[406]= 1;
            } else  {
                global.msg[0]= "* Hmmm..^1.&* Now that&  we\\'re&  gonna be&  free.../*";
                event_user(2);
                con= 190;
            }
        }
        if(sell == 6) {
            if(global.flag[7] == 0) {
                if(global.flag[407] == 0) {
                    global.msg[0]= "\\\\M5* Oh my God^1.&* Alphys./";
                    global.msg[1]= "\\\\M0* She used to&  live on our&  street./%%";
                    event_user(2);
                    global.msg[0]= "\\\\E7* Oh my god^1,&* ALPHYS./";
                    global.msg[1]= "\\\\E0* She was like&  a big sister.      /%%";
                    event_user(3);
                    con= 50;
                }
                if(global.flag[407] == 1) {
                    global.msg[0]= "\\\\M0* So Alphys&  has always^1,&  like.../*";
                    event_user(2);
                    con= 60;
                }
                if(global.flag[407] == 2 || global.flag[407] == 3) {
                    global.msg[0]= "\\\\M4* Oh my God^1.&* He\\'s a total&  goober./";
                    global.msg[1]= "\\\\M0* Like^1, I LOVE&  that guy./";
                    global.msg[2]= "\\\\M5* God^1, we\\'re&  like.../";
                    global.msg[3]= "\\\\M1* SO hyped for&  the destruction&  of humanity./%%";
                    event_user(2);
                    global.msg[0]= "\\\\E0* He\\'s a big^1,&  fuzzy&  goofball!!   /";
                    global.msg[1]= "\\\\E0* He\\'s like^1,&  SO nice.  /";
                    global.msg[2]= "\\\\E7* God^1, we\\'re&  like.../";
                    global.msg[3]= "\\\\E1* SO hyped for&  the destruction&  of humanity./%%";
                    event_user(3);
                    con= 0;
                }
                if(global.flag[407] == 2) global.flag[407]= 3;
                if(global.flag[407] == 1) global.flag[407]= 2;
                if(global.flag[407] == 0) global.flag[407]= 1;
            } else  {
                global.msg[0]= "\\\\M0* Me^1?&* Yeah^1, I&  LOVE cats!/";
                global.msg[1]= "\\\\M1* They\\'re^1,&  like^1,&  SO tasty!!/%%";
                event_user(2);
                global.msg[0]= "\\\\E8* Me^1?&* Yeah^1, I&  LOVE cats!/";
                global.msg[1]= "\\\\E1* They\\'re^1,&  like^1,&  SO cute!!!/%%";
                event_user(3);
                con= 200;
            }
        }
        if(sell == 7) {
            global.msg[0]= "* Hey^1, this is&  Bratty!/*";
            event_user(2);
            global.msg[0]= "* Hey^1, this is&  Catty! /%%";
            event_user(3);
            con= 250;
        }
        if(!instance_exists(OBJ_WRITER )) instance_create(10, 110, OBJ_WRITER );
        selling= 1;
    }
    if(con == 4 && !instance_exists(OBJ_WRITER )) {
        caster_pause(shopmus);
        mew= caster_load("music/myemeow.ogg");
        selling= 4;
        con= 5;
        global.faceemotion= 7;
        global.flag[20]= 5;
        alarm[4]= 30;
    }
    if(con == 6 && !instance_exists(OBJ_WRITER )) {
        caster_play(mew, 0.5, 0.9);
        selling= 4;
        con= 7;
        global.faceemotion= 1;
        global.flag[20]= 1;
        alarm[4]= 50;
    }
    if(con == 8) {
        caster_free(mew);
        selling= 1;
        con= 0;
        caster_resume(shopmus);
    }
    if(con == 10) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E3* TOTALLY wicked&  expensive./%%";
            event_user(3);
            con= 11;
        }
    }
    if(con == 11 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* But^1, like^1, this&  stuff we found&  is like.../*";
        event_user(2);
        con= 12;
    }
    if(con == 12 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E3* TOTALLY wicked&  cheap./%%";
        event_user(3);
        con= 13;
    }
    if(con == 13 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "\\\\M5* You should.../";
        global.msg[1]= "\\\\M1* TOTALLY wicked&  buy all of&  it?/%%";
        event_user(2);
        global.msg[0]= "\\\\E7* Like...      /";
        global.msg[1]= "\\\\E4* TOTALLY wicked&  buy all of&  it?/%%";
        event_user(3);
        con= 14;
    }
    if(con == 14 && !instance_exists(OBJ_WRITER )) {
        selling= 1;
        con= 0;
    }
    if(con == 16) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.flag[20]= 2;
            global.msg[0]= "\\\\E1* We found it in&  the garbage!/%%";
            event_user(3);
            con= 17;
        }
    }
    if(con == 17 && !instance_exists(cattywriter)) {
        caster_pause(shopmus);
        with(brattywriter) instance_destroy();
        global.faceemotion= 5;
        global.flag[20]= 5;
        con= 18;
        alarm[4]= 70;
    }
    if(con == 19) {
        caster_resume(shopmus);
        global.msg[0]= "\\\\M3* It\\'s GOOD&  garbage./*";
        event_user(2);
        global.msg[0]= "\\\\E4* It\\'s like^1,&  really good&  garbage./%%";
        event_user(3);
        con= 20;
    }
    if(con == 20 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 22) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.msg[0]= "\\\\M5* ...../";
            global.msg[1]= "\\\\M1* Waterfall&  mostly.                  /%%";
            event_user(2);
            global.msg[0]= "\\\\E7* ...../";
            global.msg[1]= "\\\\E1* I found a gun&  in a dumpster!/%%";
            event_user(3);
            selling= 1;
            con= 0;
        }
    }
    if(con == 40) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E6* That\\'s like^1,&  what they&  TELL you./%%";
            event_user(3);
            con= 41;
        }
    }
    if(con == 41 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "\\\\M2* But like..^1.&* Mettaton always&  acts like.../*";
        event_user(2);
        con= 42;
    }
    if(con == 42) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E5* ... being built&  was HIS&  idea somehow./%%";
            event_user(3);
            con= 43;
        }
    }
    if(con == 43 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "\\\\M5* And even right&  after he was&  built.../*";
        event_user(2);
        con= 44;
    }
    if(con == 44) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E7* ... he acted&  like Alphys was&  an old friend./%%";
            event_user(3);
            con= 46;
        }
    }
    if(con == 46 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "\\\\M4* But they\\'re&  like..^1.&* Not friends&  anymore./*";
        event_user(2);
        con= 47;
    }
    if(con == 47) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E1* Yeah!!^1!&* Unlike me&  and Bratty!^1!&* Best friends&  for-EVER!!!/%%";
            event_user(3);
            con= 48;
        }
    }
    if(con == 48 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 50) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M4* I mean^1, like^1,&  if your big&  sister.../*";
            event_user(2);
            con= 51;
        }
    }
    if(con == 51) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E1* Takes you on&  trips to the&  dump./%%";
            event_user(3);
            con= 52;
        }
    }
    if(con == 52) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M0* She showed us&  the coolest&  places to&  find trash./*";
            event_user(2);
            con= 53;
        }
    }
    if(con == 53 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E7* She was always&  collecting&  these weird&  cartoons./%%";
        event_user(3);
        con= 54;
    }
    if(con == 54) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M5* Then she&  became the&  Royal&  Scientist.../*";
            event_user(2);
            con= 55;
        }
    }
    if(con == 55 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E5* Yeah^1, we&  haven\\'t seen&  her in&  forever.../%%";
        event_user(3);
        con= 56;
    }
    if(con == 56 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        selling= 1;
        con= 0;
    }
    if(con == 60) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E2* Thought ASGORE&  is a SUPER&  cutie./%%";
            event_user(3);
            con= 61;
        }
    }
    if(con == 61) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M4* So^1, like^1, I\\'m&  pretty sure&  she.../*";
            event_user(2);
            con= 62;
        }
    }
    if(con == 62 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E0* Made Mettaton&  to^1, like^1,&  totally&  impress him./%%";
        event_user(3);
        con= 62.1;
    }
    if(con == 62.1) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M2* A robot with a&  SOUL.../*";
            event_user(2);
            con= 62.2;
        }
    }
    if(con == 62.2 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E5* That\\'s^1, like^1,&  SUPER relevant&  to his hobbies!/%%";
        event_user(3);
        con= 62.3;
    }
    if(con == 62.3) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M0* So after seeing&  Mettaton^1,&  ASGORE.../*";
            event_user(2);
            con= 62.4;
        }
    }
    if(con == 62.4 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E0* Asked her to do&  all this science&  stuff for him!/";
        global.msg[1]= "\\\\E5* But nobody\\'s^1,&  like^1, seen&  anything from&  her yet./%%";
        event_user(3);
        con= 65;
    }
    if(con == 65) {
        if(instance_exists(cattywriter) && cattywriter.stringno == 1) {
            with(brattywriter) instance_destroy();
        }
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M2* Or...&  her at all.../*";
            event_user(2);
            con= 66;
        }
    }
    if(con == 66 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E0* She must^1,&  like^1, just&  stay in her&  lab all day./%%";
        event_user(3);
        con= 67;
    }
    if(con == 67) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M4* Like^1, live&  a little^1,&  girl./*";
            event_user(2);
            con= 68;
        }
    }
    if(con == 68 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E1* Yeah!!^1!&* Like us!!!/%%";
        event_user(3);
        con= 70;
    }
    if(con == 70 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 75) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E4* Oh my god^1,&  can you go&  get us some&  Glamburgers?/%%";
            event_user(3);
            con= 76;
        }
    }
    if(con == 76) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M0* We don\\'t.&* Really need^1.&* Anything./*";
            event_user(2);
            con= 77;
        }
    }
    if(con == 77) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E2* Wait^1! I\\'ll pay&  you 1000G if&  you get Mettaton&  to autograph&  my butt!/%%";
            event_user(3);
            con= 78;
        }
    }
    if(con == 78 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 81) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E4* OH MY GOD!!^1!&* GIMME!!!/%%";
            event_user(3);
            con= 83;
        }
    }
    if(con == 83) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M4* God^1, Catty.&* Try to have&  some&  self-control./*";
            event_user(2);
            con= 84;
        }
    }
    if(con == 84) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E5* Sorry.../%%";
            event_user(3);
            con= 85;
        }
    }
    if(con == 85) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M6* \\'Cause they&  OBVIOUSLY&  brought that&  Glamburger&  for ME./*";
            event_user(2);
            con= 86;
        }
    }
    if(con == 86) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E1* NOOO WAYYY!!!!!/%%";
            event_user(3);
            con= 87;
        }
    }
    if(con == 87 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 110) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E5* Yeah^1! He\\'s&  a creep!/%%";
            event_user(3);
            con= 111;
        }
    }
    if(con == 111 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 112;
        global.flag[20]= 2;
        global.msg[0]= "\\\\E7* But he\\'s kind&  of cute^1,&  too.../%%";
        event_user(3);
    }
    if(con == 112) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            global.msg[0]= "\\\\M4* C\\'mon^1,&  Catty^1, don\\'t&  you have&  ANY&  standards^2?/*";
            event_user(2);
            con= 113;
        }
    }
    if(con == 113) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.flag[20]= 1;
            global.msg[0]= "\\\\E1*\\\\M1 Nope!!!/%%";
            event_user(3);
            con= 114;
        }
    }
    if(con == 114 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 120) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E7* He\\'d be OK&  if he just&  treated us&  with some&  respect./%%";
            event_user(3);
            con= 121;
        }
    }
    if(con == 121) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M5* But he just&  acts..^1.&* Really&  weird./*";
            event_user(2);
            con= 122;
        }
    }
    if(con == 122) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E5* And then acts&  like it\\'s OUR&  fault he&  acts that&  way!/%%";
            event_user(3);
            con= 123;
        }
    }
    if(con == 123) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M0* Like^1, when&  we asked him&  to get those&  Glamburgers.../*";
            event_user(2);
            con= 124;
        }
    }
    if(con == 124) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E0* He dropped them&  and ran away&  before we&  could even say&  anything!/%%";
            event_user(3);
            con= 126;
        }
    }
    if(con == 126) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M3* We were^1,&  like^1, going&  to share&  them./*";
            event_user(2);
            con= 127;
        }
    }
    if(con == 127) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E7* Really^1?&* I wasn\\'t./%%";
            event_user(3);
            con= 128;
        }
    }
    if(con == 128) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.faceemotion= 1;
            global.flag[437]= 5;
            global.msg[0]= "\\\\M1* Catty!!/%%";
            event_user(2);
            con= 129;
        }
    }
    if(con == 129 && !instance_exists(brattywriter)) {
        with(cattywriter) instance_destroy();
        con= 0;
        selling= 1;
    }
    if(con == 140) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E1*\\\\M2 Yeah!^1!&* He should come&  look for&  junk with us!/%%";
            event_user(3);
            con= 141;
        }
    }
    if(con == 141) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.faceemotion= 7;
            global.msg[0]= "\\\\M3* But like^1, if&  we let him&  hang out with&  us..^1. I just&  worry it\\'ll.../*";
            event_user(2);
            con= 142;
        }
    }
    if(con == 142) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E4*\\\\M2 ... be really&  super fun!/%%";
            event_user(3);
            con= 143;
        }
    }
    if(con == 143) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.faceemotion= 7;
            global.msg[0]= "\\\\M1* Um^1, that was&  NOT what I&  was gonna say./*";
            event_user(2);
            con= 145;
        }
    }
    if(con == 145) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E1* But I was&  close^1, right!?/%%";
            event_user(3);
            con= 114;
        }
    }
    if(con == 160) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E7* But don\\'t you&  feel bad for&  him^1, Bratty?/";
            global.msg[1]= "\\\\E5* Poor&  Burgerpants.../";
            global.msg[2]= "\\\\E4* Think about how&  cool we are&  compared to&  him!!!/";
            global.msg[3]= "* We\\'d be saving&  his LIFE with&  our&  friendship!!/";
            global.msg[4]= "\\\\E1* His LIFE^1,&  Bratty!!/%%";
            event_user(3);
            con= 161;
        }
    }
    if(con == 161) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.faceemotion= 8;
            global.msg[0]= "\\\\M4* Uh^1, so?/%%";
            event_user(2);
            con= 162;
        }
    }
    if(con == 162) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.msg[0]= "\\\\E7* ..^5. %";
            global.msg[1]= "\\\\E1* Think of all&  the glamburgers&  he could get&  for us!!/*";
            event_user(3);
            con= 163;
        }
    }
    if(con == 163) {
        selling= 4;
        if(instance_exists(cattywriter) && cattywriter.halt != 0) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M3* ... so is he&  free after&  work?/%%";
            event_user(2);
            con= 129;
        }
    }
    if(con == 170) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E0* Yeah^1, like^1,&  totally&  free./%%";
            event_user(3);
            con= 171;
        }
    }
    if(con == 171) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "* Like..^1.&* Cool./*";
            event_user(2);
            con= 172;
        }
    }
    if(con == 172) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E0* Yeah^1, like^1,&  cool./%%";
            event_user(3);
            con= 173;
        }
    }
    if(con == 173) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "* Like^1,&  milennia&  of being&  imprisoned&  finally over?/*";
            event_user(2);
            con= 174;
        }
    }
    if(con == 174) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E0* Yeah^1, that\\'s&  like pretty&  chill I guess./%%";
            event_user(3);
            con= 114;
        }
    }
    if(con == 180) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E7* Did we say&  that?/%%";
            event_user(3);
            con= 181;
        }
    }
    if(con == 181) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M4* Probably?/";
            global.msg[1]= "\\\\M1* It\\'s^1, like^1,&  practically&  our&  catchphrase./%%";
            event_user(2);
            con= 182;
        }
    }
    if(con == 182) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E8* Really^1?&* I thought our&  catchphrase&  was.../";
            global.msg[1]= "\\\\E4* B-B-Bratty\\'s&  the best^1,&  C-C-Catty\\'s&  the coolest!/%%";
            event_user(3);
            con= 183;
        }
    }
    if(con == 183) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            global.faceemotion= 7;
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M1* Um^1, no?/";
            global.msg[1]= "* We\\'ve like&  literally&  NEVER said&  that./%%";
            event_user(2);
            con= 184;
        }
    }
    if(con == 184) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.msg[0]= "\\\\E1* CAN it be&  though!^1?&* CAN it be!?/%%";
            event_user(3);
            con= 114;
        }
    }
    if(con == 190) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E4* OMG^1, we&  can finally&  fulfill our&  DREAM of having&  a pet cat!/%%";
            event_user(3);
            con= 191;
        }
    }
    if(con == 191) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            global.faceemotion= 7;
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M1* That\\'s^1, like^1,&  YOUR dream^1,&  Catty./*";
            event_user(2);
            con= 192;
        }
    }
    if(con == 192) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "* But Bratty.../";
            global.msg[1]= "\\\\E5*\\\\M5 I don\\'t wanna&  have a dream&  without YOU&  in it...!/%%";
            event_user(3);
            con= 193;
        }
    }
    if(con == 193) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "* Aww..^1.&* Catty..^3./*";
            event_user(2);
            con= 194;
        }
    }
    if(con == 194) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.flag[20]= 2;
            global.msg[0]= "\\\\E1* And^1, in my&  dream^1, YOU clean&  up after&  the cat!/%%";
            event_user(3);
            con= 195;
        }
    }
    if(con == 195) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M1* Catty!!!/%%";
            event_user(2);
            con= 129;
        }
    }
    if(con == 200 && !instance_exists(cattywriter)) {
        selling= 4;
        caster_pause(global.currentsong);
        with(cattywriter) instance_destroy();
        with(brattywriter) instance_destroy();
        global.faceemotion= 8;
        global.flag[20]= 0;
        con= 201;
        alarm[4]= 70;
    }
    if(con == 202) {
        selling= 4;
        caster_resume(global.currentsong);
        global.flag[20]= 1;
        global.msg[0]= "\\\\E5* Bratty&  NOOOO!!!/%%";
        event_user(3);
        con= 203;
    }
    if(con == 203) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.faceemotion= 1;
            global.msg[0]= "\\\\M1* I\\'m just&  kidding!!/";
            global.msg[1]= "\\\\M4*\\\\E8 Kind of./";
            global.msg[2]= "\\\\M5*\\\\E7 Anyway^1, when&  was the last&  time you even&  SAW a cat&  around here?/%%";
            event_user(2);
            con= 204;
        }
    }
    if(con == 204) {
        selling= 4;
        if(!instance_exists(brattywriter)) {
            global.flag[20]= 5;
            global.msg[0]= "\\\\E8* Oh!^1!&* JUST the other&  day!/";
            global.msg[1]= "\\\\E3* There was&  this CUTE&  little white&  cat walking&  around.../";
            global.msg[2]= "\\\\E4* It was^1, like^1,&  SOOOOOO&  clueless&  looking./";
            global.msg[3]= "\\\\E1* I pet it&  for like an&  hour!!/%%";
            event_user(3);
            con= 205;
        }
    }
    if(con == 205) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "\\\\M5* ....^1.&* ....^1.&* ... Catty^2./*";
            event_user(2);
            con= 206;
        }
    }
    if(con == 206) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E7* Yeah^1, Bratty?/%%";
            event_user(3);
            con= 207;
        }
    }
    if(con == 207) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.faceemotion= 8;
            global.msg[0]= "\\\\M1* I think that&  was^1, like..^1.&* A dog^3./*";
            event_user(2);
            con= 208;
        }
    }
    if(con == 208) {
        selling= 4;
        if(instance_exists(brattywriter) && brattywriter.halt != 0) {
            global.msg[0]= "\\\\E1* DOGS ARE JUST&  FIRM CATS!!!!/%%";
            event_user(3);
            con= 114;
        }
    }
    if(con == 250) {
        selling= 4;
        if(!instance_exists(cattywriter)) {
            with(brattywriter) instance_destroy();
            global.msg[0]= "* If you\\'re&  reading&  this.../*";
            event_user(2);
            con= 251;
        }
    }
    if(con == 251 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E7* Then^1, like^1,&  bad news you&  mega-evil&  weirdo!/%%";
        event_user(3);
        con= 252;
    }
    if(con == 252 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* Alphys just&  came here&  and she\\'s&  taking us.../*";
        event_user(2);
        con= 253;
    }
    if(con == 253 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E7* Someplace&  super duper&  safe!/%%";
        event_user(3);
        con= 254;
    }
    if(con == 254 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* But^1, first^1,&  we gotta use&  up these gel&  pens./*";
        event_user(2);
        con= 255;
    }
    if(con == 255 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "\\\\E7* Yeah^1!&* Chill^1, Alphys!&* We don\\'t wanna&  waste pens!/%%";
        event_user(3);
        con= 256;
    }
    if(con == 256 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* And don\\'t even&  THINK about&  stealing our&  stuff./*";
        event_user(2);
        con= 257;
    }
    if(con == 257 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "* Yeah^1, creep^1!&* Leave our&  junk alone!/%%";
        event_user(3);
        con= 258;
    }
    if(con == 258 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* Catty^1, it\\'s&  not JUNK^1.&* It\\'s really&  valuable./*";
        event_user(2);
        con= 259;
    }
    if(con == 259 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "* Yeah^1!&* Our garbage&  is REALLY&  valuable!/%%";
        event_user(3);
        con= 260;
    }
    if(con == 260 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* Anyway^1.&* In closing^1:&* You\\'re a&  total loser!/*";
        event_user(2);
        con= 261;
    }
    if(con == 261 && instance_exists(brattywriter) && brattywriter.halt != 0) {
        global.msg[0]= "* Yeah^1!&* Loser!!^1!&* Nya ha ha!!!/%%";
        event_user(3);
        con= 262;
    }
    if(con == 262 && !instance_exists(cattywriter)) {
        with(brattywriter) instance_destroy();
        global.msg[0]= "* Signed^1,&  Bratty <3/%%";
        event_user(2);
        global.msg[0]= "* Signed^1,&  Catty <3 /%%";
        event_user(3);
        con= 129;
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
if(global.debug == 1) {
    if(keyboard_check_pressed(71)) global.gold= 5000;
    if(keyboard_check_pressed(75)) {
        caster_free(-3);
        room_goto(314);
    }
}

/* */
/*  */
