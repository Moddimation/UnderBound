myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "%%";
if(room == 36) {
    global.msg[0]= "* (An empty photo frame.)&* (It\\'s really dusty...)/%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* (An empty photo frame.)&* (Someone\\'s dusted it off.)/%%";
}
if(room == 224) {
    global.msg[0]= "* (It\\'s a family photograph.^1)&* (Everyone is smiling.)/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "\\\\R* .../%%";
}
if(room == 33) {
    global.msg[0]= "* It\\'s a history book^1.&* Here\\'s a random page.../";
    global.msg[1]= "* Trapped behind the barrier&  and fearful of further&  human attacks^1, we retreated./";
    global.msg[2]= "* Far^1, far into the earth&  we walked^1, until we reached&  the cavern\\'s end./";
    global.msg[3]= "* This was our new home^1,&  which we named.../";
    global.msg[4]= "* " + chr(ord("\"")) + "Home." + chr(ord("\"")) + "/";
    global.msg[5]= "* As great as our king is^1,&  he is pretty lousy at&  names./%%";
}
if(room == 223) {
    global.msg[0]= "* It\\'s a bureau./";
    global.msg[1]= "* There\\'s a Santa Claus outfit&  inside./%%";
    if(scr_murderlv() >= 16) global.msg[0]= "\\\\R* Nothing useful./%%";
}
if(room == 221) {
    global.msg[0]= "* (There are photo albums...^1)&* (Scrapbooks...^1)&* (Books on how to make tea...)/%%";
    global.msg[1]= "* (They all seem very worn.)/%%";
    if(scr_murderlv() >= 16) global.msg[0]= "\\\\R* Nothing useful./%%";
}
if(room == 222) global.msg[0]= "* It\\'s a golden flower./%%";
if(room == 32)
    global.msg[0]= "* Inside is an old calendar&  from the beginning of&  201X./%%";
if(room == 220) global.msg[0]= "* (It\\'s a golden flower.)/%%";
if(room == 235)
    global.msg[0]= "* (It\\'s another throne covered&  by a white sheet.)/%%";
if(room == 35) {
    global.msg[0]= "* Just a regular old bucket^3 & &  of snails./%%";
    if(x > 90) {
        global.msg[0]= "* It\\'s an encyclopedia of&  subterranean plants. You&  open to the middle.../";
        global.msg[1]= "* " + chr(ord("\"")) + "Typha" + chr(ord("\"")) + " - A group of wetland&  flowering plants with&  brown^1, oblong seedpods./";
        global.msg[2]= "* Known more commonly as& " + chr(ord("\"")) + "water sausages." + chr(ord("\"")) + "/%%";
        global.flag[50]= 1;
    }
}
if(room == 34) {
    global.msg[0]= "* You have seen this type&  of plant before but&  do not know its name./%%";
    if(global.flag[50] == 1)
        global.msg[0]= "* Oh^2!&* It is a " + chr(ord("\"")) + "water sausage." + chr(ord("\"")) + "/%%";
}
if(room == 37) {
    global.msg[0]= "* What a nice smell...&* Too hot to eat^1, though./%%";
    if(global.flag[103] > 0)
        global.msg[0]= "* The size of the pie&  intimidates you too much&  for you to eat it./%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* (Most of the pie is gone.^1)&* (There are dog prints in&  it...)/%%";
}
if(room == 74) {
    global.msg[0]= "* While monsters are mostly made&  of magic^1, human beings are&  mostly made of water./";
    global.msg[1]= "* Humans^1, with their physical&  forms^1, are far stronger&  than us./";
    global.msg[2]= "* But they will never know&  the joy of expressing&  themselves through magic./";
    global.msg[3]= "* They\\'ll never get a bullet-&   pattern birthday card.../%%";
}
if(room == 265) global.msg[0]= "* It\\'s a door./%%";
if(room == 44)
    global.msg[0]= "* ...!^1?&* There\\'s a camera hidden&  in the bushes./%%";
if(room == 53) {
    if(instance_exists(obj_iceflag )) {
        if(read == 0) {
            if(obj_iceflag.image_index == 0) {
                if(global.flag[387] == 0) {
                    global.msg[0]= "\\\\W* \\\\OBravery^1. \\\\YJustice.\\\\W  &*\\\\B Integrity^1. \\\\GKindness^1.\\\\W &*\\\\P Perseverance^1. \\\\LPatience. \\\\W /";
                    global.msg[1]= "\\\\W* Using these^1, you were&  able to win at " + chr(ord("\"")) + "\\\\RBall Game\\\\W." + chr(ord("\"")) + "/";
                    global.msg[2]= "* (You are awarded 50G.)/%%";
                    global.gold+= 50;
                    global.flag[387]= 1;
                } else  {
                    global.msg[0]= "\\\\W* \\\\RRED\\\\W - Try as you might^1,&  you continue to be your/";
                    global.msg[1]= "* (You are awarded 10G.)/%%";
                    global.gold+= 10;
                }
            }
            if(obj_iceflag.image_index == 1) {
                global.msg[0]= "\\\\W* \\\\OORANGE\\\\W - You are the kind of&  person who rushes fists-first&  through all obstacles./";
                global.msg[1]= "* (You are awarded 5G.)/%%";
                global.gold+= 5;
            }
            if(obj_iceflag.image_index == 2) {
                global.msg[0]= "\\\\W* \\\\YYELLOW\\\\W - Your sure-fire&  accuracy put an end to&  the mayhem of " + chr(ord("\"")) + "Ball." + chr(ord("\"")) + "/";
                global.msg[1]= "* (You are awarded 3G.)/%%";
                global.gold+= 3;
            }
            if(obj_iceflag.image_index == 3) {
                global.msg[0]= "\\\\W* \\\\BBLUE\\\\W - Hopping and twirling^1,&  your original style&  pulled you through./";
                global.msg[1]= "* (You are awarded 2G.)/%%";
                global.gold+= 2;
            }
            if(obj_iceflag.image_index == 4) {
                global.msg[0]= "\\\\W* \\\\GGREEN\\\\W - Your concern and care&  for " + chr(ord("\"")) + "Ball" + chr(ord("\"")) + " led you to a&  delicious victory./";
                global.msg[1]= "* (You are awarded 1G.)/%%";
                global.gold++;
            }
            if(obj_iceflag.image_index == 5) {
                global.msg[0]= "\\\\W* \\\\PPURPLE\\\\W - Even when you felt&  trapped^1, you took notes and&  achieved the end of " + chr(ord("\"")) + "Ball." + chr(ord("\"")) + "/";
                global.msg[1]= "* (You are awarded 2G.)/%%";
                global.gold+= 2;
            }
            if(obj_iceflag.image_index == 6) {
                global.msg[0]= "\\\\W* \\\\LLIGHT BLUE\\\\W - " + chr(ord("\"")) + "Ball" + chr(ord("\"")) + " is " + chr(ord("\"")) + "Small.^1" + chr(ord("\"")) + "&* You waited^1, still^1, for&  this opportunity.../";
                global.msg[1]= "* ... then dethroned " + chr(ord("\"")) + "Ball" + chr(ord("\"")) + " with&  a sharp attack./";
                global.msg[2]= "* (You are awarded 4G.)/%%";
                global.gold+= 4;
            }
        } else  global.msg[0]= "* (This flag has nothing else&  to offer.)/%%";
    } else  {
        global.msg[0]= "\\\\W* Ah^1! Wow^1! Woah^1!&* It\\'s a " + chr(ord("\"")) + "\\\\RHole\\\\W" + chr(ord("\"")) + "./%%";
        if(global.flag[203] >= 16) global.msg[0]= "* There\\'s a hole here./%%";
    }
}
if(room == 54) global.msg[0]= "* (Hers.)/%%";
if(room == 76) {
    if(instance_exists(obj_papyrusparent )) {
        scr_papface(0, 0);
        global.msg[1]= "THIS IS MY BROTHER\\'S&PET ROCK./";
        global.msg[2]= "\\\\E1HE ALWAYS FORGETS&TO FEED IT./";
        global.msg[3]= "\\\\E3AS USUAL^1, I HAVE&TO TAKE&RESPONSIBILITY./";
        global.msg[4]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[5]= "* (The rock is covered in&  sprinkles.)/%%";
    } else  global.msg[0]= "* (This rock is covered in&  sprinkles.)/%%";
    if(read > 0)
        global.msg[0]= "* (This rock is covered in&  sprinkles.)/%%";
}
if(room == 77) {
    if(instance_exists(obj_papyrusparent )) {
        scr_papface(0, 0);
        global.msg[1]= "ISN\\'T THAT FLAG&NEATO?/";
        global.msg[2]= "UNDYNE FOUND IT&AT THE BAY.../";
        global.msg[3]= "\\\\E3I THINK IT\\'S FROM&THE HUMAN WORLD?/";
        global.msg[4]= "\\\\E0NOW^1, I KNOW&WHAT YOU\\'RE&THINKING./";
        global.msg[5]= "\\\\E3WHY WOULD A&HUMAN FLAG.../";
        global.msg[6]= "HAVE A COOL&SKELETON ON IT?/";
        global.msg[7]= "WELL..^1.&I HAVE A THEORY./";
        global.msg[8]= "\\\\E3I THINK HUMANS.../";
        global.msg[9]= "\\\\E0MUST HAVE&DESCENDED FROM&SKELETONS!!!/";
        global.msg[10]= "NYEH HEH HEH!!!/%%";
    } else  global.msg[0]= "* (It\\'s a beat-up pirate&  flag.)/%%";
    if(read > 0) global.msg[0]= "* (It\\'s a beat-up pirate&  flag.)/%%";
}
if(room == 91) {
    global.msg[0]= "* Why did the humans attack^1?&* Indeed^1, it seemed that they&  had nothing to fear./";
    global.msg[1]= "* Humans are unbelievably strong.&* It would take the SOUL of&  nearly every monster.../";
    global.msg[2]= "* ... just to equal the power&  of a single human SOUL./%%";
}
if(room == 101) {
    global.msg[0]= "* This power has no counter.&* Indeed, a human cannot&  take a monster\\'s SOUL./";
    global.msg[1]= "* When a monster dies, its&  SOUL disappears./";
    global.msg[2]= "* And an incredible power&  would be needed to take the&  SOUL of a living monster./%%";
}
if(room == 126) {
    global.msg[0]= "* There is only one way to&  reverse this spell./";
    global.msg[1]= "* If a huge power, equivalent&  to seven human SOULs, attacks&  the barrier.../";
    global.msg[2]= "* It will be destroyed./%%";
}
if(room == 110) {
    global.msg[0]= "* In the end, it could&  hardly be called a war./";
    global.msg[1]= "* United, the humans were too&  powerful, and us monsters,&  too weak./";
    global.msg[2]= "* Not a single SOUL was taken,&  and countless monsters were&  turned to dust.../%%";
}
if(room == 123) {
    global.msg[0]= "* I\\'m catching bugs^1.&* But the underground doesn\\'t&  have many.../";
    global.msg[1]= "* I keep catching the same&  one./%%";
}
if(room == 141) {
    global.msg[0]= "* (It\\'s a computer.^1)&* (It\\'s accessing some kind of&  puzzle in Snowdin.)/%%";
    if(global.plot < 126 && scr_murderlv() < 12)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
}
if(room == 142) global.msc= 643;
if(room == 154) {
    global.msg[0]= "* (It\\'s an oven.^1)&* (It looks pretty modern.)/%%";
    if(global.plot < 134)
        global.msg[0]= "* (It\\'s too dark to see&  near the walls.)/%%";
    if(instance_exists(obj_mettaton_npc )) {
        global.typer= 27;
        global.msg[0]= "* OH YES^1! MTT-BRAND OVENS CAN &  REACH TEMPERATURES UP TO&  NINE-THOUSAND DEGREES!/";
        global.msg[1]= "* ROASTING^1! TOASTING^1! BURNING^1!&* CHARRING^1! YOU\\'RE EXCITED^1,&  AREN\\'T YOU^1, DARLING? (TM)/%%";
    }
    if(global.plot == 134) {
        global.typer= 5;
        global.msg[0]= "* (It\\'s the oven.^1)&* (Looks like someone forgot&  to preheat it.)/%%";
    }
}
if(room == 118) {
    global.typer= 37;
    global.facechoice= 5;
    global.faceemotion= 0;
    global.msc= 0;
    if(x < 100) {
        global.msg[0]= "* You wanna see my&  room?/";
        global.msg[1]= "\\\\E3* TOO BAD^1!&* No nerds allowed!/";
        global.msg[2]= "\\\\E9* ... well^1, maybe some&  nerds.../%%";
        if(read > 0) global.msg[0]= "* You\\'re being kind&  of creepy./%%";
    }
    if(x > 100) {
        global.msg[0]= "* I love how^1, um^1,&  thoughtful Papyrus&  is.../";
        global.msg[1]= "\\\\E2* But what the hell&  am I supposed to do&  with all these bones?/%%";
    }
}
if(room == 170)
    global.msg[0]= "* (It\\'s a spider donut.^1)&* (It looks more...^1)&* (Rubbery than usual.)/%%";
if(room == 196)
    global.msg[0]= "* (North^1, the warrior\\'s path.)&* (West^1, the sage\\'s path.)&* (Any path leads to The End.)/%%";
if(room == 202)
    global.msg[0]= "* (To the East^1!)&* (This is The End.)/%%";
if(room == 245) {
    global.msg[0]= "* ENTRY NUMBER 2/";
    global.msg[1]= "* The barrier is locked by&  SOUL power../";
    global.msg[2]= "* Unfortunately^1, this power&  cannot be recreated&  artificially./";
    global.msg[3]= "* SOUL power can only be&  derived from what was&  once living./";
    global.msg[4]= "* So^1, to create more^1, we&  will have to use what we&  have now.../";
    global.msg[5]= "* The SOULs of monsters./%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
}
if(room == 250) {
    global.msg[0]= "* ENTRY NUMBER 13/";
    global.msg[1]= "* one of the bodies opened&  its eyes./%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
}
if(room == 251) global.msg[0]= "* (The clock is broken.)/%%";
if(room == 252) {
    global.msg[0]= "* ENTRY NUMBER 10/";
    global.msg[1]= "* experiments on the&  vessel are a failure./";
    global.msg[2]= "* it doesn\\'t seem to be&  any different from the&  control cases./";
    global.msg[3]= "* whatever^1.&* they\\'re a hassle to work&  with anyway./";
    global.msg[4]= "* the seeds just stick to&  you^1, and won\\'t let go.../%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
}
if(room == 254) {
    global.msg[0]= "* ENTRY NUMBER 16/";
    global.msg[1]= "* no No NO NO NO NO NO/%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
}
if(room == 257) {
    global.msg[0]= "* (There are a bunch of VHSes.^1)&* (Seems like it\\'s mostly&  cartoons of some kind.)/";
    global.msg[1]= "* (They seem to be alphabetized^1,&  save for a few stray...^1)&* (... sticky ones?)/%%";
}
if(room == 260) {
    global.msg[0]= "* ENTRY NUMBER 11/";
    global.msg[1]= "* now that mettaton\\'s made it&  big^1, he never talks to&  me anymore./";
    global.msg[2]= "* ... except to ask when i\\'m&  going to finish his body./";
    global.msg[3]= "* but i\\'m afraid if i finish&  his body^1, he won\\'t need me&  anymore.../";
    global.msg[4]= "* then we\\'ll never be friends&  ever again./";
    global.msg[5]= "* ... not to mention^1, every time&  i try to work on it^1, i&  just get really sweaty.../%%";
}
if(room == 258) {
    global.msg[0]= "* ENTRY NUMBER 20/";
    global.msg[1]= "* ASGORE left me five&  messages today./";
    global.msg[2]= "* four about everyone being&  angry/";
    global.msg[3]= "* one about this cute teacup&  he found that looks like&  me/";
    global.msg[4]= "* thanks asgore./%%";
    if(global.flag[485] == 1)
        global.msg[0]= "* (It seems to be turned off.)/%%";
    if(global.flag[490] == 0)
        global.msg[0]= "* (It\\'s too dark to see near&  the walls.)/%%";
}
if(room == 262) {
    global.msg[0]= "* (Seems to be turned off.)/%%";
    if(global.flag[485] == 1) {
        global.msg[0]= "* ENTRY NUMBER 18/";
        global.msg[1]= "* the flower\\'s gone./%%";
    }
}
if(room == 68) {
    global.msg[0]= "* (It\\'s locked from the&  inside.)/%%";
    if(instance_exists(obj_papyrus_houseoutside ) || instance_exists(obj_papyrus_room )) {
        scr_papface(0, 0);
        global.msg[1]= "PLEASE DON\\'T ENTER&THE MYSTERIOUS&SHACK./%%";
        if(instance_exists(obj_undyne_friendc )) {
            global.msg[1]= "HELLO^1.&THAT\\'S NOT&MY HOUSE./";
            global.msg[2]= "THAT\\'S JUST MY&COOL TOOLSHED./";
            scr_undface(3, 6);
            global.msg[4]= "* Do you call it&  your COOLSHED!?/";
            scr_papface(5, 0);
            global.msg[6]= "NO!!^1!&I\\'VE NEVER THOUGHT&OF THAT!!!/";
            global.msg[7]= "THAT\\'S WHY WE\\'RE&FRIENDS^1,&UNDYNE./";
            global.msg[8]= "YOU ENRICH MY&LIFE WITH SHED-&BASED PUNS./";
            scr_undface(9, 9);
            global.msg[10]= "* That\\'s the only&  one I\\'ve ever&  made^1, dude./%%";
        }
        if(global.flag[67] < 0) {
            global.msg[1]= "READY FOR ANOTHER&NIGHT IN THE&PUNISHMENT SHACK?/%%";
            if(instance_exists(obj_undyne_friendc )) {
                global.msg[1]= "READY FOR ANOTHER&NIGHT IN THE&PUNISHMENT SHACK?/";
                scr_undface(2, 1);
                global.msg[3]= "* Oh my GOD^1, I don\\'t&  even wanna KNOW./";
                scr_papface(4, 0);
                global.msg[5]= "DON\\'T BE SO&JUDGMENTAL^1,&UNDYNE./";
                global.msg[6]= "MY SHACK IS A&FOUR STAR&ESTABLISHMENT./";
                scr_undface(7, 0);
                global.msg[8]= "* What^1, lemme guess./";
                global.msg[9]= "\\\\E6* Sometimes you cut a&  hot dog into the&  dog food^1, right?/";
                scr_papface(10, 1);
                global.msg[11]= "WHAT!?!?/";
                global.msg[12]= "\\\\E0HOW\\'D YOU KNOW?/";
                scr_undface(13, 1);
                global.msg[14]= "* OH MY GOD^1! NO^1!&* I WAS JOKING!!^1!&* DON\\'T DO THIS!!!/%%";
            }
        }
        if(read > 0) global.msg[1]= "YOU SHOULD LEARN&A PRIVACY./%%";
    }
}
if(room == 73)
    global.msg[0]= "* (You can\\'t go through the&  fire exit because you\\'re&  not made of fire.)/%%";
if(room == 78) global.msg[0]= "* (It\\'s an uncovered pillow.)/%%";
if(room == 80)
    global.msg[0]= "* (You look in the drawer.^1)&* (There\\'s some kind of badge.)/%%";
if(room == 184)
    global.msg[0]= "* (It\\'s a performance schedule.^1)&* (Comedians^1, dancers^1, Sans...^1)&* (Seems there\\'s a break now.)/%%";
if(room == 186) {
    global.msg[0]= "* (It\\'s some sort of giant bottle&  of perfume.^1)&* (Eau de Rectangle.)/";
    global.msg[1]= "* (The cap is so comically large^1,&  you can\\'t open it.)/%%";
}
if(room == 128) {
    global.msg[0]= "* (Feeling of being watched.)/%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* (She\\'s waiting for someone to&  let her out.)/%%";
}
if(room == 95) {
    global.msg[0]= "* (The gems on the southern&  wall shine in a&  spectacular pattern.)/";
    global.msg[1]= "* (It\\'s a nice thing you can&  see the southern wall from&  this angle.)/%%";
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
read++;

/* */
/*  */
