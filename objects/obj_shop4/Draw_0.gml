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
    if(global.wstrength > 2) wchecks= "-";
    achecks= " ";
    if(global.adef <= 5) achecks= "+";
    if(global.adef > 5) achecks= "-";
    if(menuc[1] == 0)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 14HP#Very popular#food."));
    if(menuc[1] == 1)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 27HP#Very popular#food."));
    if(menuc[1] == 2)
        draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 40HP#Hero Sandwich.#ATTACK UP#in battle."));
    if(global.flag[445] == 0) {
        if(menuc[1] == 3)
            draw_text(224, minimenuy + 14, string_hash_to_newline("Heals 60HP#Don\\'t ask.#Please."));
        else  {
            if(menuc[1] == 3) draw_text(224, minimenuy + 14, string_hash_to_newline("SOLD OUT"));
        }
    }
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
        if(global.flag[435] < 2) {
            global.msg[0]= "\\\\E0* The customer is always right./*";
            if(mainmessage == 0 && global.flag[69] == 0)
                global.msg[0]= "\\\\E0* Welcome to MTT-Brand&  Burger Emporium^1, home&  of the Glamburger^1.&* Sparkle up your&  day (TM)./*";
        } else  {
            global.msg[0]= "\\\\E3* Anything else you need?/*";
            if(mainmessage == 0 && global.flag[69] == 0)
                global.msg[0]= "\\\\E3* What can I do for you^1,&  little buddy?/*";
            if(murder == 1)
                global.msg[0]= "\\\\E1* (Why do I always&  get the freaks?)/*";
        }
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
        if(menuc[0] == 2) {
            menu= 3;
            if(global.flag[435] == 0) {
                menu= 4;
                sell= 20;
            }
            if(global.flag[435] == 1) {
                menu= 4;
                sell= 21;
            }
        }
        if(menuc[0] == 3) {
            sell= 2;
            menu= 4;
        }
    }
}
if(menu == 1 || menu == 2) {
    draw_text(30, 130, string_hash_to_newline(" 60G - Starfait"));
    draw_text(30, 150, string_hash_to_newline("120G - Glamburger"));
    draw_text(30, 170, string_hash_to_newline("300G - Legendary Hero"));
    if(global.flag[445] == 0) {
        draw_text(30, 190, string_hash_to_newline("500G - "));
        draw_text_transformed(70, 190, string_hash_to_newline("Steak in the Shape of Mettaton\\'s Face"), 0.6, 1, 0);
    } else  {
        draw_set_color(8421504);
        draw_text(30, 190, string_hash_to_newline("--- SOLD OUT ---"));
        draw_set_color(16777215);
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(menu == 1) {
        menumax= 4;
        if(!instance_exists(OBJ_WRITER )) {
            if(global.flag[435] < 2) {
                if(sidemessage == 0)
                    global.msg[0]= "\\\\E0How can&I help&you, O&customer?/*";
                if(sidemessage == 1)
                    global.msg[0]= "\\\\E2Thanksy!&Have a&FABU-FUL&day!!!/*";
                if(sidemessage == 2)
                    global.msg[0]= "\\\\E1So do&you want&it or&not???/*";
                if(sidemessage == 3)
                    global.msg[0]= "\\\\E1That\\'s not&the right&amount of&money./*";
                if(sidemessage == 4) global.msg[0]= "\\\\E1You&don\\'t&have&room./*";
                if(sidemessage == 5)
                    global.msg[0]= "\\\\E1We don\\'t&HAVE&any&more./*";
            }
            if(global.flag[435] == 2) {
                if(sidemessage == 0)
                    global.msg[0]= "\\\\E6Take what&you want^1,&little&buddy./*";
                if(sidemessage == 1)
                    global.msg[0]= "\\\\E6Here you&go^1,&little&buddy./*";
                if(sidemessage == 2) global.msg[0]= "\\\\E6Don\\'t&worry&about&it./*";
                if(sidemessage == 3)
                    global.msg[0]= "\\\\E6Sorry...&You can\\'t&take it&for free./*";
                if(sidemessage == 4)
                    global.msg[0]= "\\\\E6You gotta&drop some&stuff./*";
                if(sidemessage == 5)
                    global.msg[0]= "\\\\E6Like I\\'m&making&THAT&again./*";
                if(murder == 1) {
                    if(sidemessage == 0)
                        global.msg[0]= "\\\\E3Are you&gonna&order or&what?/*";
                    if(sidemessage == 1)
                        global.msg[0]= "\\\\E6Here you&go^1,&little&weirdo./*";
                    if(sidemessage == 2)
                        global.msg[0]= "\\\\E1So do&you want&it or&not???/*";
                    if(sidemessage == 3)
                        global.msg[0]= "\\\\E1That\\'s not&the right&amount of&money./*";
                    if(sidemessage == 4) global.msg[0]= "\\\\E1You&don\\'t&have&room./*";
                    if(sidemessage == 5)
                        global.msg[0]= "\\\\E1We don\\'t&HAVE&any&more./*";
                }
            }
            instance_create(210, 110, OBJ_WRITER );
        }
        draw_sprite(spr_heartsmall , 0, 15, 135 + menuc[1] * 20);
        if(keyboard_multicheck_pressed(0)) {
            soldout= 0;
            if(menuc[1] == 3 && global.flag[445] == 1) soldout= 1;
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
                            if(global.flag[435] < 1) global.flag[435]= 1;
                            if(menuc[1] == 3) global.flag[445]= 1;
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
            draw_text(30, 130, string_hash_to_newline("Life Advice"));
            if(global.flag[437] == 0) draw_text(30, 150, string_hash_to_newline("Romance Advice"));
            if(global.flag[437] == 1) {
                draw_set_color(65535);
                draw_text(30, 150, string_hash_to_newline("Glamburger Story (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[437] == 2) draw_text(30, 150, string_hash_to_newline("Glamburger Story"));
            if(global.flag[437] == 4) draw_text(30, 150, string_hash_to_newline("Clarify Story"));
            if(global.flag[437] == 5) {
                draw_set_color(65535);
                draw_text(30, 150, string_hash_to_newline("Bratty & Catty (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[437] == 6) draw_text(30, 150, string_hash_to_newline("Bratty & Catty"));
            if(global.flag[437] == 7) draw_text(30, 150, string_hash_to_newline("Outing"));
            if(global.flag[437] == 8) {
                draw_set_color(65535);
                draw_text(30, 150, string_hash_to_newline("Catty\\'s Invitation (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[437] == 9) draw_text(30, 150, string_hash_to_newline("Catty\\'s Invitation"));
            if(global.flag[436] == 0) draw_text(30, 170, string_hash_to_newline("Mettaton"));
            if(global.flag[436] == 1) {
                draw_set_color(65535);
                draw_text(30, 170, string_hash_to_newline("Why is Mettaton bad (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[436] == 2) {
                draw_set_color(65535);
                draw_text(30, 170, string_hash_to_newline("Why else is MTT bad (NEW)"));
                draw_set_color(16777215);
            }
            if(global.flag[436] == 3) draw_text(30, 170, string_hash_to_newline("Why else is MTT bad"));
            draw_text(30, 190, string_hash_to_newline("Your future"));
        } else  {
            draw_text(30, 130, string_hash_to_newline("Evacuation"));
            draw_text(30, 150, string_hash_to_newline("Mettaton"));
            draw_text(30, 170, string_hash_to_newline("Alone"));
            draw_text(30, 190, string_hash_to_newline("Threaten"));
        }
    }
    if(global.flag[7] == 1) {
        draw_text(30, 130, string_hash_to_newline("Freedom"));
        draw_text(30, 150, string_hash_to_newline("Bratty and Catty"));
        draw_text(30, 170, string_hash_to_newline("Freedom"));
        draw_text(30, 190, string_hash_to_newline("Future"));
    }
    draw_text(30, 210, string_hash_to_newline("Exit"));
    if(!instance_exists(OBJ_WRITER )) {
        global.msg[0]= "\\\\E3Take it&from me^1,&little&buddy./*";
        if(murder == 1) global.msg[0]= "\\\\E3Nothing&else to&do!/*";
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
            if(global.flag[435] < 2) {
                global.msg[0]= "\\\\E1* (WHY IS THIS PERSON TRYING TO&  SELL ME SOMETHING THIS IS&  A HAMBURGER RESTAURANT I\\'M&  JUST TRYING TO SURVIVE)/%%";
                soldo++;
                if(soldo > 1) global.msg[0]= "\\\\E3* WHO DO YOU THINK YOU ARE./%%";
            } else  {
                global.msg[0]= "\\\\E6* Hmmm..^1.&* Why not try selling that to&  the two chicks in the alley?/%%";
                if(murder == 1)
                    global.msg[0]= "\\\\E3* Ah^1. Yes^1.&* I really want to buy your&  weird dusty artifacts..^1.&* NOT./%%";
            }
        }
        if(sell == 2) {
            global.msg[0]= "\\\\E2* Have a SPARKULAR day!/%%";
            if(global.flag[435] > 1) {
                global.msg[0]= "\\\\E6* Any time^1, little buddy./%%";
                if(murder == 1) global.msg[0]= "\\\\E6* Alone again.../%%";
            }
        }
        if(sell == 3) {
            global.msg[0]= "\\\\E6* I\\'m getting on in years^1, so&  let me give you some&  advice^1, little buddy./";
            global.msg[1]= "\\\\E3* You\\'ve still got time^1.&* Don\\'t live like me./";
            global.msg[2]= "\\\\E6* I\\'m 19 years old and I\\'ve&  already wasted my entire life./%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E0* So we\\'re free^1, huh^1?&* Mettaton told us as much./";
                global.msg[1]= "\\\\E4* Then he told me^1, " + chr(ord("\"")) + "don\\'t&  think that means you\\'re&  getting out of work early." + chr(ord("\"")) + "/";
                global.msg[2]= "\\\\E6* Ah..^1. my boss.&* I love that guy./";
                global.msg[3]= "\\\\E3* And by that I mean I hate&  him so^1, so much./%%";
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E1* Evacuation^1?&* You\\'re yanking my chain^1,&  little weirdo./";
                global.msg[1]= "\\\\E3* So WHAT if everybody else&  left work?&* So WHAT if nobody\\'s buying&  anything?/";
                global.msg[2]= "\\\\E6* Par for the course^1,&  little weirdo^1.&* Par for the course./%%";
            }
        }
        if(sell == 4) {
            global.msg[0]= "* I\\'m a goofy goober Yeah &  this errorr. message./%%";
            if(global.flag[437] == 9)
                global.msg[0]= "\\\\E6* Thank you^1, little buddy./%%";
            if(global.flag[437] == 8) {
                global.msg[0]= "\\\\E5* They wanna hang out after&  work?/";
                global.msg[1]= "\\\\E3* Ha^1! Ahahaha!^1! Yes!!^1!&* I won\\'t let you down!!/";
                global.msg[2]= "\\\\E6* Little buddy..^1. thank you./";
                global.msg[3]= "* You\\'ve brought a tear to the&  eye of this old man./";
                global.msg[4]= "\\\\E5* So^1, uh^1, where do they&  want to go?/";
                global.msg[5]= "\\\\E4* .../";
                global.msg[6]= "* They want to hang out at&  the garbage dump./";
                global.msg[7]= "* .../";
                global.msg[8]= "\\\\E6* Well^1, nowhere to go but&  up^1, right^1, little buddy?/%%";
            }
            if(global.flag[437] == 7) {
                global.msg[0]= "\\\\E6* Hey little buddy^1, wanna help&  me pick a spicy outfit for&  my little shindig later?/";
                global.msg[1]= "\\\\E4* Though^1, now that I think&  about it^1, I had to throw away&  all of my clothes to make&  room for the outfits Mettaton&  gave me.../";
                global.msg[2]= "\\\\E5* Don\\'t take it the wrong way^1.&* They\\'re just all these.../";
                global.msg[3]= "\\\\E4* Weird getups./";
                global.msg[4]= "\\\\E1* " + chr(ord("\"")) + "Promotional" + chr(ord("\"")) + " costumes^1.&* For " + chr(ord("\"")) + "holidays.^1" + chr(ord("\"")) + "&* Or " + chr(ord("\"")) + "specials.^1" + chr(ord("\"")) + "&* Or " + chr(ord("\"")) + "because he felt like it." + chr(ord("\"")) + "/";
                global.msg[5]= "\\\\E3* The thing IS though^1!&* Most of the time I\\'m the&  only employee who has to&  wear this stuff!/";
                global.msg[6]= "\\\\E3* Sometimes he even calls me&  into his office just to..^1.&* Make me put something on.../";
                global.msg[7]= "\\\\E4* Then he laughs and lets me&  go back to work as normal./";
                global.msg[8]= "\\\\E6* Anyways^1, I won\\'t sweat it^1,&  little buddy^1.&* I\\'ll take it casual./";
                global.msg[9]= "* NEVER let hot people think&  you care^1.&* That\\'s how they GET you./%%";
            }
            if(global.flag[437] == 6)
                global.msg[0]= "\\\\E5* Well^1?&* Don\\'t keep me waiting^1,&  little buddy!!/%%";
            if(global.flag[437] == 5) {
                global.msg[0]= "\\\\E4* The girls were..^1.&* Talking about me...?/";
                global.msg[1]= "* They say I should stop acting&  like they owe me.../";
                global.msg[2]= "\\\\E5* ... and if I want to be&  FRIENDS with them^1, I should&  just..^1. uh^1, try to see&  things from their&  perspective?/";
                global.msg[3]= "\\\\E4* Wow./";
                global.msg[4]= "\\\\E6* Poor^1, naive little buddy^1.&* They\\'ve brainwashed you./";
                global.msg[5]= "* " + chr(ord("\"")) + "Friendship" + chr(ord("\"")) + " is just a hot&  person\\'s way of making you&  their slave./";
                global.msg[6]= "\\\\E4* .../";
                global.msg[7]= "\\\\E5* So^1, uh^1, what time would&  they wanna hang out?/%%";
            }
            if(global.flag[437] == 4) {
                global.msg[0]= "\\\\E5* Huh^1?&* Yeah^1, those two vendors in back^1.&* The girls./";
                global.msg[1]= "\\\\E3* NOT the Nice Cream guy./";
                global.msg[2]= "\\\\E5* He keeps coming in here and&  asking me stuff like^1,&* " + chr(ord("\"")) + "Hey Burgy, what do you think&  of this joke for my next&  ice cream wrapper?" + chr(ord("\"")) + "/";
                global.msg[3]= "\\\\E4* Joke^1?&* Why are you calling it a JOKE?/";
                global.msg[4]= "\\\\E3* You drew a picture of two&  dudes hugging and wrote&  " + chr(ord("\"")) + "I love hugs!" + chr(ord("\"")) + " on it./";
                global.msg[5]= "\\\\E3* You somehow understand comedy&  EVEN LESS than that guy who&  keeps going on stage and&  crying about his family./";
                global.msg[6]= "\\\\E5* Anyway^1, I^1, uh^1, just tell him&  that they\\'re good^1, because he&  gives me the nice cream for&  free afterward.../%%";
            }
            if(global.flag[437] == 2) {
                global.msg[0]= "\\\\E4* Everyone calls me burgerpants&  now./";
                global.msg[1]= "\\\\E5* But you won\\'t^1, will you^1,&  little buddy?/%%";
            }
            if(global.flag[437] == 1) {
                global.msg[0]= "\\\\E6* So I went out to the alley&  to see those two ladies^1, and&  uh..^1. you know^1, see what\\'d&  happen next./";
                global.msg[1]= "\\\\E4* .../";
                global.msg[2]= "\\\\E5* Then my boss^1, uh^1, saw me and&  asked me what I was doing./";
                global.msg[3]= "\\\\E1* I was so startled^1, the hamburgers&  in my pockets tumbled out&  onto the ground./";
                global.msg[4]= "\\\\E3* Not wanting to lose face^1,&  I scrambled to pick them up!/";
                global.msg[5]= "\\\\E3* But^1, as I was leaning over^1,&  the weight of the remaining&  hamburgers.../";
                global.msg[6]= "\\\\E5* ... caused my pants to fall&  down./";
                global.msg[7]= "\\\\E4* Then the girls laughed at me./";
                global.msg[8]= "\\\\E4* Everyone calls me Burgerpants&  now./%%";
            }
            if(global.flag[437] == 0) {
                global.msg[0]= "\\\\E6* Listen^1.&* I like you^1, little buddy^1.&* So I\\'m gonna save you a lot&  of trouble./";
                global.msg[1]= "\\\\E3* Never interact with attractive&  people./";
                global.msg[2]= "\\\\E6* Unless you\\'re " + chr(ord("\"")) + "one of them^1," + chr(ord("\"")) + "&  they\\'re just gonna take&  advantage of you./";
                global.msg[3]= "\\\\E3* Like that time those two&  chicks asked me to sneak them&  some glamburgers./";
                global.msg[4]= "\\\\E6* And I^1, naive teenager that&  I was^1, said yes to them./";
                global.msg[5]= "\\\\E4* Bad idea./%%";
            }
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E4* Those girls?&* The ones who saw my pants&  fall down?/";
                global.msg[1]= "\\\\E5* Well^1, we\\'re all gonna be&  free^1, so I\\'ll never see&  them again^1, at least!/%%";
                if(global.flag[437] >= 9) {
                    global.msg[0]= "\\\\E4* So we\\'re free now./";
                    global.msg[1]= "\\\\E5* Does that mean my double-&  date is cancelled...?/";
                    global.msg[2]= "\\\\E4* .../";
                    global.msg[3]= "\\\\E5* I know^1, it wasn\\'t really&  a..^1.&* A date./";
                    global.msg[4]= "\\\\E6* Here\\'s a trick^1, little buddy^1:&* Lie to yourself all the time^1.&* It makes you feel better./%%";
                }
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E4* Well^1, Mettaton didn\\'t tell me&  I HAD to work, I guess.../";
                global.msg[1]= "\\\\E3* But that\\'s the thing^1!&* Sometimes he doesn\\'t even&  call me into work until&  halfway into my shift!/";
                global.msg[2]= "\\\\E4* If I don\\'t play it safe^1,&  he\\'s going to yell at me./";
                global.msg[3]= "\\\\E6* Okay^1, maybe " + chr(ord("\"")) + "yell" + chr(ord("\"")) + " is the&  wrong term./";
                global.msg[4]= "\\\\E4* It\\'s more like he has this..^1.&* CD album he plays.../";
                global.msg[5]= "\\\\E5* That\\'s entirely full of&  songs about how bad I am&  at my job./%%";
            }
            if(global.flag[437] == 8) global.flag[437]= 9;
            if(global.flag[437] == 5) global.flag[437]= 6;
            if(global.flag[437] == 1) global.flag[437]= 2;
            if(global.flag[437] == 0) global.flag[437]= 1;
        }
        if(sell == 5) {
            if(global.flag[436] == 3)
                global.msg[0]= "\\\\E5* Let\\'s not talk about this./%%";
            if(global.flag[436] == 2) {
                global.msg[0]= "\\\\E1* Why do people find him so&  attractive??/";
                global.msg[1]= "\\\\E3* He\\'s literally just a freaking&  rectangle./";
                global.msg[2]= "\\\\E4* .../";
                global.msg[3]= "* You know^1, one time^1, I bought&  one of those^1, uh^1, kits&  online..^1. to.../";
                global.msg[4]= "\\\\E5* Uh^1, make yourself more&  rectangular./";
                global.msg[5]= "\\\\E4* .../";
                global.msg[6]= "\\\\E5* They don\\'t work./%%";
            }
            if(global.flag[436] == 1) {
                global.msg[0]= "\\\\E3* God^1, have you even looked&  around^1?&* This place is a labyrinth of&  bad choices./";
                global.msg[1]= "* And every time we try to change&  something for the better^1, he&  vetoes it and says " + chr(ord("\"")) + "that\\'s not&  how they do it on the&  surface." + chr(ord("\"")) + "/";
                global.msg[2]= "\\\\E1Oh! Right!/";
                global.msg[3]= "\\\\E3* Humans are always eating&  hamburgers made of SEQUINS&  AND GLUE./%%";
            }
            if(global.flag[436] == 0) {
                global.msg[0]= "\\\\E5* When I first came to Hotland^1,&  it was my dream to work&  with Mettaton./";
                global.msg[1]= "\\\\E4* .../";
                global.msg[2]= "\\\\E3* Well^1, be careful what you&  wish for^1, little buddy!/%%";
            }
            if(global.flag[436] == 2) global.flag[436]= 3;
            if(global.flag[436] == 1) global.flag[436]= 2;
            if(global.flag[436] == 0) global.flag[436]= 1;
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E3* Don\\'t tell anyone this^1, Little&  Buddy./";
                global.msg[1]= "\\\\E4* (Because they\\'ll make fun&  of me,)/";
                global.msg[2]= "\\\\E5* But I..^1.&* I feel like I played a hand in&  everyone getting free&  somehow./";
                global.msg[3]= "\\\\E1* Even if it was just&  working this awful job.../";
                global.msg[4]= "\\\\E5* I think I did something!/";
                global.msg[5]= "\\\\E3* I don\\'t know if it\\'s true^1,&  but I\\'ll believe it anyway!/%%";
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E3* Huh?&* Everyone else is DEAD?/";
                global.msg[1]= "\\\\E4* .../";
                global.msg[2]= "\\\\E5* Does that mean I don\\'t&  have to work today?/";
                global.msg[3]= "\\\\E6* God^1.&* That it were true^1,&  little weirdo^1.&* That it were true./%%";
            }
        }
        if(sell == 6) {
            global.msg[0]= "\\\\E3* Future^1?&* WHAT future^1?&* Nothing down here EVER&  changes./";
            global.msg[1]= "\\\\E4* I\\'ll probably be trapped&  at this stupid job forever./";
            global.msg[2]= "* .../";
            global.msg[3]= "\\\\E3* But wait^1!&* There\\'s one thing that keeps&  me going!/";
            global.msg[4]= "* If ASGORE gets just one&  more SOUL^1, we\\'ll finally get&  to go to the surface!/";
            global.msg[5]= "* It\\'ll be a brand new world^1!&* There\\'s gotta be a second&  chance out there for me^1!&* For everyone!/";
            global.msg[6]= "\\\\E6* So stay strong^1, little buddy^1.&* When I make it big^1, I\\'ll&  keep you in mind./%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "\\\\E3* Little buddy^1!&* There\\'s a brand new world&  out there waiting&  for us./";
                global.msg[1]= "\\\\E6* I\\'m sure with my (ahem)&  qualifications^1, it won\\'t&  be long before I\\'m a&  famous movie star.../";
                global.msg[2]= "\\\\E4* Or^1, maybe I\\'ll just end up&  flipping burgers again./";
                global.msg[3]= "\\\\E3* But it\\'s as I say^1!&* Nowhere to go but up^1!&* Literally^1, in this case!/%%";
            }
            if(murder == 1) {
                global.msg[0]= "\\\\E6* Sorry^1, little weirdo^1.&* Threats won\\'t work on me./";
                global.msg[1]= "* I can\\'t go to hell^1.&* I\\'m all out of vacation&  days./%%";
            }
        }
        if(sell == 20)
            global.msg[0]= "\\\\E0* I\\'m sorry^1, (Ha ha) it\\'s against&  the rules to talk to customers&  who haven\\'t bought anything./%%";
        if(sell == 21) {
            global.msg[0]= "\\\\E1* What^1?&* Why do you keep trying to talk&  to me?/";
            global.msg[1]= "\\\\E1* I\\'ll get in trouble if I get&  chummy with the customers./";
            global.msg[2]= "\\\\E0* Sorry./";
            global.msg[3]= "\\\\E4* .../";
            global.msg[4]= "\\\\E3* SO^1, I wanted to be an ACTOR./%%";
            global.flag[435]= 2;
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
            if(sell == 1 || sell == 20) menu= 0;
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
    if(keyboard_check_pressed(66))
        global.flag[437]++;
    if(keyboard_check_pressed(76)) {
        caster_free(-3);
        room_goto(313);
    }
}

/* */
/*  */
