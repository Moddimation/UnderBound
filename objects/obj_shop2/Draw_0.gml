draw_set_color(16777215);
draw_rectangle(0, 120, 320, 240, 0);
if(menu == 1 || menu == 2) {
    draw_rectangle(210, 120, 320, minimenuy, 0);
    draw_set_color(0);
    if(minimenuy < 116) draw_rectangle(214, 120, 316, minimenuy + 4, 0);
    draw_set_color(16777215);
    wcheck= string(2 - global.wstrength);
    acheck= string(5 - global.adef);
    wchecks= " ";
    if(global.wstrength <= 2) wchecks= "+";
    if(global.wstrength > 2) wchecks= " ";
    achecks= " ";
    if(global.adef <= 5) achecks= "+";
    if(global.adef > 5) achecks= " ";
    if(menuc[1] == 0)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 18HP#(Looks#like a#crab.)"));
    if(menuc[1] == 1)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 10HP#SPEED#up in#battle."));
    if(menuc[1] == 2)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Armor: 5DF#(" + achecks + acheck + " DF)#Invincible#longer"));
    if(menuc[1] == 3)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Weapon: 2AT#(" + wchecks + wcheck + " AT)#Invincible#longer"));
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
        global.msg[0]= "* Don\\'t be shy now./*";
        mainmessage= 0 && global.flag[69] == 0;
        global.msg[0]= "* Woah there^1!&* I\\'ve got some neat&  junk for sale./*";
        if(global.flag[7] == 1)
            global.msg[0]= "* Wah ha ha^1!&* I knew you could&  do it!/*";
        if(murder == 1)
            global.msg[0]= "* Wa ha ha..^1.&* So you came here^1.&* What a treat!/*";
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
    draw_text(240, 130, string_hash_to_newline("Buy"));
    draw_text(240, 150, string_hash_to_newline("Sell"));
    draw_text(240, 170, string_hash_to_newline("Talk"));
    draw_text(240, 190, string_hash_to_newline("Exit"));
    draw_sprite(spr_heartsmall , 0, 225, 135 + menuc[0] * 20);
    if(keyboard_multicheck_pressed(0)) {
        OBJ_WRITER.dfy= 1;
        keyboard_clear(13);
        if(menuc[0] == 0) menu= 1;
        if(menuc[0] == 1) {
            sell= 1;
            menu= 4;
        }
        if(menuc[0] == 2) menu= 3;
        if(menuc[0] == 3) {
            sell= 2;
            menu= 4;
        }
    }
}
if(menu == 1 || menu == 2) {
    draw_text(30, 130, string_hash_to_newline("25G - Crab Apple"));
    draw_text(30, 150, string_hash_to_newline("18G - Sea Tea"));
    draw_text(30, 170, string_hash_to_newline("30G - Cloudy Glasses"));
    draw_text(30, 190, string_hash_to_newline("55G - Torn Notebook"));
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(menu == 1) {
        menumax= 4;
        if(!instance_exists(OBJ_WRITER )) {
            if(sidemessage == 0) global.msg[0]= "What are&you lookin&for?/*";
            if(sidemessage == 1) global.msg[0]= "Thanks!&Wa ha ha./*";
            if(sidemessage == 2) global.msg[0]= "Careful&with that./*";
            if(sidemessage == 3)
                global.msg[0]= "You\\'re&a bit&short&on cash./*";
            if(sidemessage == 4) global.msg[0]= "You\\'re&carrying&too much!/*";
            if(murder == 1) {
                if(sidemessage == 0) global.msg[0]= "Don\\'t&expect a&discount./*";
                if(sidemessage == 1) global.msg[0]= "Here we&are./*";
                if(sidemessage == 2) global.msg[0]= ".../*";
                if(sidemessage == 3) global.msg[0]= "Eh^1?&You can\\'t&afford&it?/*";
                if(sidemessage == 4) global.msg[0]= "Don\\'t you&have&enough?/*";
            }
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
        if(murder == 0) {
            draw_text(30, 130, string_hash_to_newline("About yourself"));
            if(global.flag[96] == 0) draw_text(30, 150, string_hash_to_newline("That emblem"));
            if(global.flag[96] == 1) {
                draw_set_color(65535);
                draw_text(30, 150, string_hash_to_newline("Emblem\\'s meaning (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[96] == 2) {
                draw_set_color(65535);
                draw_text(30, 150, string_hash_to_newline("The prophecy (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[96] == 3) draw_text(30, 150, string_hash_to_newline("The prophecy"));
            draw_text(30, 170, string_hash_to_newline("The King"));
            draw_text(30, 190, string_hash_to_newline("About Undyne"));
        } else  {
            draw_text(30, 130, string_hash_to_newline("Fate"));
            draw_text(30, 150, string_hash_to_newline("Threat"));
            draw_text(30, 170, string_hash_to_newline("Fight"));
            draw_text(30, 190, string_hash_to_newline("Hero"));
        }
    }
    if(global.flag[7] == 1) {
        draw_text(30, 130, string_hash_to_newline("Fluffybuns Why?"));
        draw_text(30, 150, string_hash_to_newline("Is ASGORE a goat"));
        draw_text(30, 170, string_hash_to_newline("ASGORE and TORIEL"));
        draw_text(30, 190, string_hash_to_newline("Undyne"));
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(!instance_exists(OBJ_WRITER )) {
        if(murder == 0) global.msg[0]= "Anything&you&wanna&know?/*";
        if(murder == 1) global.msg[0]= "Really?&YOU&wanna&chat?/*";
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
            if(murder == 0) {
                global.msg[0]= "\\\\E2* Ha^1!\\\\E0 &* I\\'m tryin\\' to get RID of&  my junk^1, not get more of it!/";
                global.msg[1]= "\\\\E4* Though^1, I\\'ve heard if you&  want to sell stuff^1, the Temmie&  Village is your best bet./";
                global.msg[2]= "\\\\E0* Where is it?/";
                global.msg[3]= "\\\\E3* .../";
                global.msg[4]= "\\\\E0* I don\\'t remember./%%";
                soldo++;
                if(soldo > 1) {
                    global.msg[0]= "* For the last time^1, I\\'m not&  taking it!/%%";
                    global.msg[1]= "* I hear people will pay for&  ANYTHING nowadays./%%";
                }
            } else 
                global.msg[0]= "\\\\E3* I wouldn\\'t buy your chitzy&  garbage at knifepoint./%%";
        }
        if(sell == 2) {
            if(murder == 0) global.msg[0]= "* Be careful out there^1, kid!/%%";
            if(murder == 1) global.msg[0]= "* Good riddance./%%";
        }
        if(sell == 3) {
            if(murder == 0) {
                global.msg[0]= "* I\\'ve been around a long time^1.&*\\\\E3 Maybe too long./";
                global.msg[1]= "\\\\E2* Studying history sure is&  easy when you\\'ve lived through&  so much of it yourself^1!&*\\\\E0 Wa ha ha!/%%";
            } else  {
                global.msg[0]= "\\\\E0* Long ago^1, ASGORE and I&  agreed that escaping would&  be pointless.../";
                global.msg[1]= "\\\\E3* Since once we left^1, humans&  would just kill us./";
                global.msg[2]= "\\\\E1* I felt a little betrayed when&  he eventually changed his&  mind./";
                global.msg[3]= "\\\\E4* But now^1, I think..^1.&* Maybe he was right to./";
                global.msg[4]= "\\\\E2* \\'Cause after all^1, even though&  we never escaped.../";
                global.msg[5]= "\\\\E3* A human\\'s killing us anyway^1,&  ain\\'t that right?/%%";
            }
            if(global.flag[7] == 1) {
                global.msg[0]= "* OK^1, OK^1!&* I remember it clearly now./";
                global.msg[1]= "\\\\E3* It was the monthly address at&  the castle^1, and the queen&  was giving her part on&  current events./";
                global.msg[2]= "\\\\E0* After finishing her update^1,&  she moved to pass the&  microphone to the king./";
                global.msg[3]= "\\\\E3* However^1, she didn\\'t realize&  the microphone was still in&  her hands when she said:/";
                global.msg[4]= "\\\\E2* " + chr(ord("\"")) + "Your turn^1, Fluffybuns." + chr(ord("\"")) + "/";
                global.msg[5]= "\\\\E0* The audience burst into&  laughter./";
                global.msg[6]= "\\\\E2* Realizing what she had said^1,&  she started laughing too./";
                global.msg[7]= "\\\\E0* After a few moments^1, the&  king held up his arms^1.&* The crowd grew silent./";
                global.msg[8]= "\\\\E3* He leaned towards the&  microphone^1, expression..^1.&* Stern./";
                global.msg[9]= "\\\\E0* " + chr(ord("\"")) + "Dear citizens.^1" + chr(ord("\"")) + "&* " + chr(ord("\"")) + "Thank you for coming&  here today." + chr(ord("\"")) + "/";
                global.msg[10]= "\\\\E3* " + chr(ord("\"")) + "I..^1. King Fluffybuns..." + chr(ord("\"")) + "/";
                global.msg[11]= "\\\\E2* And the rest is history./%%";
            }
        }
        if(sell == 4) {
            if(global.flag[96] == 3) {
                global.msg[0]= "\\\\E2* What\\'s that^1?&* You want me to repeat myself?/";
                global.msg[1]= "\\\\E0* Heck no^1!&* Your eyes still work..^1.&* Go read a book or something^1!&* Wahaha!/%%";
            }
            if(global.flag[96] == 2) {
                global.msg[0]= "\\\\E0* Oh yeah..^1.&* The prophecy./";
                global.msg[1]= "\\\\E4* Legend has it, an \\'angel\\' who has&  seen the surface will descend&  from above and bring us freedom./";
                global.msg[2]= "\\\\E3* Lately^1, the people have been&  taking a bleaker outlook.../";
                global.msg[3]= "\\\\E4* Callin\\' that winged circle the&  \\'Angel of Death.\\'/";
                global.msg[4]= "\\\\E3* A harbinger of destruction^1,&  waitin\\' to \\'free\\' us from&  this mortal realm.../";
                global.msg[5]= "* In my opinion^1, when I see&  that little circle.../";
                global.msg[6]= "\\\\E2* I jus\\' think it looks neat^1!&* Wahaha!/%%";
            }
            if(global.flag[96] == 1) {
                global.msg[0]= "\\\\E0* That emblem actually predates&  written history^1.&* The original meaning has been&  lost to time.../";
                global.msg[1]= "\\\\E4* All we know is that the&  triangles symbolize us monsters&  below^1, and the winged circle&  above symbolizes.../";
                global.msg[2]= "\\\\E3* Somethin\\' else./";
                global.msg[3]= "\\\\E0* Most people say it\\'s the&  \\'angel^1,\\' from the prophecy.../%%";
            }
            if(global.flag[96] == 0) {
                global.msg[0]= "\\\\E0* Eh^1?&* You don\\'t know what that is?/";
                global.msg[1]= "\\\\E1* What are they teaching you&  kids in school nowadays...^1?&*\\\\E2 Wa ha ha!/";
                global.msg[2]= "\\\\W*\\\\E0 That\\'s the \\\\YDelta Rune^1,\\\\W the&  emblem of our kingdom^1.&* The Kingdom.../";
                global.msg[3]= "* ... of Monsters./";
                global.msg[4]= "* Wahaha^1!&* Great name^1, huh^1?&* It\\'s as I always say.../";
                global.msg[5]= "* Ol\\' King Fluffybuns can\\'t name&  for beans!/%%";
            }
            if(global.flag[96] == 2) global.flag[96]= 3;
            if(global.flag[96] == 1) global.flag[96]= 2;
            if(global.flag[96] == 0) global.flag[96]= 1;
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E3* Eh^1?&* Goat?/";
                global.msg[1]= "\\\\E2* Actually^1, that reminds me^1.&* Toriel once wore a flower-&  patterned muu-muu... /";
                global.msg[2]= "\\\\E0* Folks kept saying " + chr(ord("\"")) + "nice muu-&  muu" + chr(ord("\"")) + " to her^1, but she kept&  thinking they were calling&  her a cow./";
                global.msg[3]= "\\\\E1* So she never wore it again./";
                global.msg[4]= "\\\\E3* What was the question again?/";
                global.msg[5]= "\\\\E0* Oh^1.&* Right^1.&* ASGORE./";
                global.msg[6]= "\\\\E3* He\\'s a real interesting&  type of monster^1.&* The strongest type of all./";
                global.msg[7]= "\\\\E0* We call \\'em Boss Monsters./";
                global.msg[8]= "* When they have an offspring^1,&  the SOUL power of the&  parents flows into the&  child.../";
                global.msg[9]= "* Causing the child to grow&  as the parents age./";
                global.msg[10]= "\\\\E3* But ASGORE doesn\\'t have a&  child^1.&* So he\\'s been stuck at the&  same age..^1.&* And probably will be forever./";
                global.msg[11]= "\\\\E1* Huh^1?&* What if the child is a&  human...^1? What?/";
                global.msg[12]= "\\\\E1* Nah^1. That wouldn\\'t work^1.&* So if ASGORE\\'s your father^1,&  he\\'ll definitely outlive&  you./%%";
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E1* I\\'ve lived too long to&  be afraid of something&  like you./";
                global.msg[1]= "\\\\E2* Try it^1, kiddo!/";
                global.msg[2]= "\\\\E3* ... I know you can\\'t here./";
                global.msg[3]= "\\\\E1* Wah ha..^1.&* Knowledge like that is&  the only reason I\\'ve&  survived so long./%%";
            }
        }
        if(sell == 5) {
            global.msg[0]= "* King Fluffybuns^1?&* He\\'s a friendly^1, happy-go-lucky&  kind of guy.../";
            global.msg[1]= "\\\\E4* If you keep walking around long&  enough^1, you\\'ll probably meet him^1.&*\\\\E0 He loves to walk around and&  talk to people./";
            global.msg[2]= "\\\\E3* Eh^1?&* Why do I call Dreemurr&  \\'Fluffybuns?^1\\'&*\\\\E2 Oh^1, that\\'s a great story!/";
            global.msg[3]= "\\\\E3* .../";
            global.msg[4]= "\\\\E0* I don\\'t remember it./";
            global.msg[5]= "* But if you come back much&  later^1, I\\'m sure I\\'ll have&  remembered by then./%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E2* Oh yeah^1!&* Of course^1.&* Toriel was queen^1, and&  Asgore was the king./";
                global.msg[1]= "\\\\E3* It was tragic when she left./";
                global.msg[2]= "\\\\E1* Since everyone knew she was&  really the brains behind the&  throne.../";
                global.msg[3]= "\\\\E0* But it was also just a&  teensy^1, teensy bit relieving^1,&  you know?/";
                global.msg[4]= "\\\\E3* Those two were really&  insufferable together..^1.&* Nuzzling noses^1, bein\\' all cute&  n\\' cuddly in public..^1.&* Embarrassing their children.../";
                global.msg[5]= "\\\\E0* They were so sweet it&  made me SICK^1.&* Thank god those days are&  over!/%%";
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E3* Eh^1? Fight you?/";
                global.msg[1]= "\\\\E1* Nah..^1. I\\'m not a hero^1.&* Never was./";
                global.msg[2]= "\\\\E2* And b\\'sides..^1.&* These old bones aren\\'t fit&  for fighting anyhoo./";
                global.msg[3]= "\\\\E3* One attack from you^1, and&  then I\\'d... well.../";
                global.msg[4]= "\\\\E2* At least by talking to&  you^1, I\\'ve bought enough time&  for some of them to escape./%%";
            }
        }
        if(sell == 6) {
            global.msg[0]= "\\\\E0* Undyne^1?&* Yeah^1, she\\'s a local hero&  around here./";
            global.msg[1]= "\\\\E4* Through grit and determination&  alone^1, she fought her way to&  the top of the Royal Guard./";
            global.msg[2]= "\\\\E3* Actually^1, she just came through&  here asking about someone who&  looked just like you.../";
            global.msg[3]= "\\\\E0* I\\'d watch your back^1, kid^1.&* And buy some items..^1.&* It might just save your hide^1!&* Wa ha ha!/%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E0* Undyne^1.&* She\\'s really come a long way&  since she was a little&  urchin./";
                global.msg[1]= "\\\\E2* I used to be a hero myself^1,&  back in the old days^1.&* Gerson^1, the Hammer of Justice./";
                global.msg[2]= "\\\\E3* When she was younger^1, Undyne&  would follow me around^1, to&  watch me beat up bad guys.../";
                global.msg[3]= "\\\\E0* Sometimes she\\'d even try&  to help!/";
                global.msg[4]= "\\\\E3* Though^1, most of the time&  the folks she attacked weren\\'t&  bad guys^1.&* It\\'d be the mailman or&  something like that./";
                global.msg[5]= "\\\\E2* Anyhoo^1, I appreciated it^1!&* Wah ha ha ha!!!/%%";
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E1* I\\'m not a hero./";
                global.msg[1]= "\\\\E3* But I know there\\'s someone&  out there./";
                global.msg[2]= "\\\\E0* Someone who\\'ll never give&  up trying to do the&  right thing^1, no matter&  what./";
                global.msg[3]= "\\\\E4* There\\'s no prophecy or&  legend \\'bout anyone like&  that./";
                global.msg[4]= "\\\\E3* It\\'s just something I know&  is true./";
                global.msg[5]= "\\\\E0* That someone like that&  will strike you down./%%";
            }
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
            if(sell == 1) menu= 0;
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
if(global.debug == 1 && keyboard_check_pressed(71))
    global.gold= 5000;

/* */
/*  */
