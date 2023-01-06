myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
if(room == 224) {
    if(x <= -10 + room_width / 2) {
        if(global.flag[114] == 0) global.msc= 268;
        else  global.msc= 272;
    }
    if(x >= -10 + room_width / 2) {
        if(global.flag[115] == 0) global.msc= 270;
        else  global.msc= 272;
    }
}
if(room == 225) {
    global.msg[0]= "* (It\\'s a trash can.)/";
    global.msg[1]= "* (It\\'s full of crumpled-up&  recipes for butterscotch&  pie.)/%%";
}
if(room == 223)
    global.msg[0]= "* (It\\'s a trophy.^1)&* (Number 1 Nose-Nuzzle&  Champs \\'98!)/%%";
if(room == 83) {
    global.msg[0]= "* This is an Echo Flower^1.&* It repeats the last thing&  it heard^1, over and over.../%%";
    if(talkedto > 0) global.msg[0]= "* Neat^1, huh?/%%";
    if(obj_echoflower.v == 1)
        global.msg[0]= "* Never trust a flower..^1.&* That\\'s one of the constants&  of this world./%%";
}
if(room == 89) global.msc= 246;
if(room == 85) global.msc= 248;
if(room == 94) {
    global.msg[0]= "* This cheese has been here so&  long^1, a magical crystal has&  grown around it./";
    global.msg[1]= "* It\\'s stuck to the table.../%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* (Seems like the mouse has&  freed some of the cheese&  from the crystal somehow.)/%%";
}
if(room == 95) {
    global.msg[0]= "* What\\'s a star?/";
    global.msg[1]= "* Can you touch it?/";
    global.msg[2]= "* Can you eat it?/";
    global.msg[3]= "* Can you kill it?/";
    global.msg[4]= "* .../";
    global.msg[5]= "* Are you a star?/%%";
    if(global.flag[85] == 1)
        global.msg[0]= "* What are you holding^1?&* Is that a star?/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* We can go and see the&  real stars now.../";
        global.msg[1]= "* But I still don\\'t know&  what those are./%%";
    }
    if(global.flag[350] == 1) {
        global.msg[0]= "* One of the stars faded out./";
        global.msg[1]= "* What does that mean...?/%%";
    }
}
if(room == 96) global.msc= 250;
if(room == 98) global.msc= 252;
if(sprite_index == 1629) {
    global.msc= 0;
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msg[0]= "* (It\\'s a dirty sock with a&  series of notes on it.)/";
    global.msg[1]= "\\\\TP %";
    global.msg[2]= "SANS^1!&PLEASE PICK UP YOUR SOCK!/";
    global.msg[3]= "\\\\Ts %";
    global.msg[4]= "* ok./";
    global.msg[5]= "\\\\TP %";
    global.msg[6]= "DON\\'T PUT IT BACK DOWN^1!&MOVE IT!/";
    global.msg[7]= "\\\\Ts %";
    global.msg[8]= "* ok./";
    global.msg[9]= "\\\\TP %";
    global.msg[10]= "YOU MOVED IT TWO INCHES^1!&MOVE IT TO YOUR ROOM!/";
    global.msg[11]= "\\\\Ts %";
    global.msg[12]= "* ok./";
    global.msg[13]= "\\\\TP %";
    global.msg[14]= "AND DON\\'T BRING IT BACK!/";
    global.msg[15]= "\\\\Ts %";
    global.msg[16]= "* ok./";
    global.msg[17]= "\\\\TP %";
    global.msg[18]= "IT\\'S STILL HERE!/";
    global.msg[19]= "\\\\Ts %";
    global.msg[20]= "* didn\\'t you just say not&  to bring it back to my&  room?/";
    global.msg[21]= "\\\\TP %";
    global.msg[22]= "FORGET IT!/%%";
}
if(room == 304) global.msc= 580;
if(room == 117) {
    global.msg[0]= "* What^1.&* What^1?&* WHAT!?/";
    global.msg[1]= "* It\\'s a living./%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* So^1, you helped get us&  all free.../";
        global.msg[1]= "* I guess I really acted&  like a dummy to you./%%";
    }
    if(scr_murderlv() >= 9) {
        global.msg[0]= "* Sorry for acting like a&  dummy before./";
        global.msg[1]= "* You\\'ve really helped me&  out!!/%%";
    }
}
if(room == 122) {
    global.msg[0]= "* (It\\'s a snail.)/";
    global.msg[1]= "* (For some reason^1, you can\\'t&  help but wonder what it&  tastes like...)/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* (It\\'s a snail.)/";
        global.msg[1]= "* (You wonder if Toriel has&  seen it.)/%%";
    }
}
if(room == 91) {
    global.msg[0]= "* Boo-hoo^1, boo-hoo./%%";
    if(global.flag[85] == 1)
        global.msg[0]= "* Boo-hoo^1, boo-hoo^1,&  umbrella boo-hoo./%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* Boo-hoo^1, triumphant&  boo-hoo./%%";
}
if(room == 149) {
    global.msg[0]= "* We were hanging out&  when suddenly^1, a buncha puzzles&  reactivated out of nowhere./";
    global.msg[1]= "* This is a huge problem..^1.&* It rules^1! They\\'ve GOTTA&  cancel school over this!/%%";
    if(talkedto > 0)
        global.msg[0]= "* Wait a second..^1.&* Auuuugh^1, it\\'s summer vacation!/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Hey^1, did you hear^1?&* The barrier\\'s opened up!/";
        global.msg[1]= "* Now school HAS to be&  cancelled^1, right!?/%%";
    }
    if(global.flag[425] == 1) {
        global.msg[0]= "* Why should we bother going&  to school^1, anyway...?/";
        global.msg[1]= "* This world\\'s got no future./%%";
    }
    if(id == instance_find(object_index, 1)) {
        global.msg[0]= "* Finally!&* Someone turned off that laser!/";
        global.msg[1]= "* Now that we\\'re free we can..^1.&* Well^1, uh^1, I guess we\\'ll just&  keep standing here./%%";
        if(talkedto > 0)
            global.msg[0]= "* Hm^1?&* Nice try^1, but your loitering&  technique still needs work./%%";
        if(global.flag[7] == 1)
            global.msg[0]= "* There will be lots of places&  to loiter on the surface^1,&  I bet./%%";
        if(global.flag[425] == 1)
            global.msg[0]= "* Loitering around..^1.&* What\\'s the point?/%%";
    }
}
if(room == 151) {
    global.msg[0]= "* The way to work is blocked^1,&  so I had time to catch&  Mettaton\\'s show on my phone.../";
    global.msg[1]= "* The special effects were&  amazing today^1!&* That human almost looked REAL!/%%";
    if(talkedto > 0)
        global.msg[0]= "* Of course^1, an experienced&  viewer like me knows CGI&  when they see it.../%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* The barrier\\'s opened up^1, so&  we don\\'t have to go to&  work today./";
        global.msg[1]= "* I mean^1, sure^1, we\\'re free^1,&  but it\\'s the little&  things^1, you know?/%%";
    }
    if(global.flag[425] == 1) {
        global.msg[0]= "* That last episode had me&  really shaken.../";
        global.msg[1]= "* But Mettaton\\'s OK^1.&* Everyone knows it\\'s just CGI!/%%";
    }
    if(id == instance_find(object_index, 1)) {
        global.msg[0]= "* Mettaton^1?&* Yeah^1, he\\'s the most popular&  star in the underground!/";
        global.msg[1]= "* His fan club probably has&  at least two..^1. no^1, THREE&  dozen members!/%%";
        if(talkedto > 0)
            global.msg[0]= "* And that\\'s not even counting&  me!/%%";
        if(global.flag[7] == 1) {
            global.msg[0]= "* Today^1, we all started as&  co-workers.../";
            global.msg[1]= "* Who knows what we\\'ll be&  tomorrow?/%%";
        }
        if(global.flag[425] == 1) {
            global.msg[0]= "* What a heartbreaker./";
            global.msg[1]= "* I bet his fanclub\\'s almost&  doubled in size from that!/%%";
        }
    }
}
if(room == 146) global.msc= 260;
if(room == 161) global.msc= 262;
if(room == 164) {
    global.msg[0]= "* (There\\'s a piece of cheese&  inside this computerized&  laser-safe.)/";
    global.msg[1]= "* (The lasers have melted the&  edges of the cheese..^1.)&* (It\\'s stuck to the table.)/%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* (Seems like the mouse hacked&  the safe and took the&  cheese out.)/%%";
}
if(room == 118) {
    global.facechoice= 5;
    global.faceemotion= 9;
    global.typer= 37;
    global.msc= 0;
    global.msg[0]= "* It\\'s so nice to&  have you over!/";
    global.msg[1]= "* Why not take a&  seat at the&  table?/%%";
    if(talkedto > 0)
        global.msg[0]= "* Sit at the freakin\\'&  table^1, you little&  nerd./%%";
}
if(room == 170) {
    global.msg[0]= "* I..^1. I..^1. I ended up buying a&  donut.../";
    global.msg[1]= "* I..^1. I..^1. I didn\\'t want to^1, but&  that girl..^1. even though I told&  her no^1, she.../";
    global.msg[2]= "* ... kept staring at me in this&  creepy way and licking her&  lips./";
    global.msg[3]= "* N..^1. now I\\'m outta cash./%%";
    if(talkedto > 0)
        global.msg[0]= "* Maybe I can sell it online&  and double my money back.../%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* On the surface^1, I won\\'t&  buy any donuts from&  spiders./";
        global.msg[1]= "* That\\'s my resolution./%%";
    }
    if(global.flag[425] == 1) global.msg[0]= "* .../%%";
}
if(room == 206) global.msc= 264;
if(room == 207) global.msc= 266;
if(room == 238)
    global.msg[0]= "* (It\\'s just a regular flower.)/%%";
if(room == 216)
    global.msg[0]= "* From now on^1, call me&  " + chr(ord("\"")) + "Jimmy Hotpants." + chr(ord("\"")) + "/%%";
if(room == 139 && y < 70) {
    global.msg[0]= "* .../%%";
    if(talkedto > 0) global.msg[0]= "* ... what?/%%";
}
if(room == 251)
    global.msg[0]= "* (It\\'s an empty dog food&  bowl.)/%%";
if(room == 78) {
    global.msg[0]= "* (It\\'s a treadmill.^1)&* (There\\'s a message attached.)/";
    global.msg[1]= "* " + chr(ord("\"")) + "the truth is that you got&  owned^1, nerd......" + chr(ord("\"")) + "/%%";
}
if(room == 181) global.msg[0]= "* (... he seems happy.)/%%";
if(room == 48) global.msg[0]= "* Sn..^1. ow..^1. y.../%%";
if(room == 119) {
    global.typer= 27;
    global.facechoice= 8;
    if(global.flag[198] == 0) {
        global.msg[0]= "\\\\E0* There you are^1,&  Frisk-darling./";
        global.msg[1]= "\\\\E8* Feast your eyes^1!&* Dr. Alphys completed&  my wonderful new body./";
        global.msg[2]= "\\\\E7* Oooh^1!&* And did you hear^1?&* The barrier\\'s OPEN!/";
        global.msg[3]= "\\\\E4* I can\\'t wait to see&  the sun.../";
        global.msg[4]= "\\\\E5* ... the greatest&  spotlight of all!!/";
        global.msg[5]= "\\\\E9* Oh yes^1.&* I suppose I should thank&  you^1, too^1, darling./";
        global.msg[6]= "\\\\E2* Before fighting you^1,&  I had.../";
        global.msg[7]= "\\\\E4* Forgotten how fun it&  was to perform with&  others./";
        global.msg[8]= "\\\\E6* So I\\'ve been searching&  for HOT TALENTS to fill&  up my upcoming troupe./";
        global.msg[9]= "\\\\E0* So far^1, Shyren\\'s agreed&  to be my back-up singer./";
        global.msg[10]= "\\\\E0* And Bl..^1.&* Napstablook^1, here^1, will&  be my sound mixer!/";
        global.msg[11]= "\\\\E2* The three of us&  performing together.../";
        global.msg[12]= "\\\\E4* It really feels overdue^1,&  doesn\\'t it?/%%";
    }
    if(global.flag[198] == 1) {
        global.msg[0]= "\\\\E0* Frisk^1, darling^1.&* Can you help me with&  something?/";
        global.msg[1]= "\\\\E2* What kind of merchandise&  do you think humans&  would want to buy...?/";
        global.msg[2]= "\\\\E1* I\\'ve thought of a few&  ideas so far./";
        global.msg[3]= "\\\\E6* Buttons (with my face)&* Stickers (with my face)&* CDs (with my face)/";
        global.msg[4]= "\\\\E7* Posters (with my face)&* T-shirts (with my face)&* Underwear (with my face)/";
        global.msg[5]= "\\\\E9* ... and plush dolls of&  TORIEL./";
        global.msg[6]= "\\\\E8* But, you know^1.&* With my face instead&  of hers./";
        global.msg[7]= "\\\\E0* So what do you think?/";
        global.msg[8]= "\\\\TS \\\\F0 \\\\T0 %";
        global.msg[9]= "* (...)/";
        global.msg[10]= "* (A yes or no prompt was not&  provided.)/";
        global.msg[11]= "\\\\TS \\\\F8 \\\\TM %";
        global.msg[12]= "\\\\E9* Fabulous^1!&* I completely agree!/%%";
    }
    if(global.flag[198] >= 2) {
        global.msg[0]= "\\\\E2* Oh^1, Frisk^1.&* Why don\\'t you go see&  how Alphys is doing?/";
        global.msg[1]= "\\\\E1* Since the flash of light&  she\\'s been working hard&  to set everything right./";
        global.msg[2]= "\\\\E0* Ha-Ha^1.&* About time^1, huh?/%%";
    }
    global.flag[198]++;
}
if(room == 266) {
    global.msg[0]= "* (By barking with text-to-speech&  on^1, the dog accidentally&  programmed a whole game.)/";
    global.msg[1]= "* (Hmmm..^1. seems fine.)/%%";
}
if(room == 184) {
    global.msg[0]= "* Blub blub..^1.&* You\\'ll have to reserve a&  table to eat here./";
    global.msg[1]= "* You\\'ll also need to reserve&  your chair^1, your silverware^1,&  your food^1, your.../%%";
    if(global.flag[7] == 1)
        global.msg[0]= "* Blub blub..^1.&* Now we can live life&  without reservations./%%";
    if(global.flag[425] == 1) {
        global.msg[0]= "* Blub blub..^1.&* Mettaton isn\\'t here to press&  his face into the steaks./";
        global.msg[1]= "* He told me that if he ever&  disappeared^1, we could use&  my face instead.../";
        global.msg[2]= "* But^1, I\\'m nervous^1.&* What if my face doesn\\'t&  taste very good...?/%%";
    }
    if(x < 120) {
        global.msg[0]= "* As I came in^1, I realized I&  forgot to make a reservation./";
        global.msg[1]= "* But I didn\\'t want to look&  like I messed up^1.&* So I kept walkin\\' in anyway./";
        global.msg[2]= "* Now I\\'m just..^1. kinda..^1.&* Consuming dew off this ficus./%%";
        if(global.flag[7] == 1) {
            global.msg[0]= "* Oh^1, we\\'re all free?/";
            global.msg[1]= "* Oh..^1.&* Guess I can..^1.&* Stop lickin\\' this ficus./";
            global.msg[2]= "* ... but I don\\'t want to look&  like I messed up^1, so&  I\\'ll keep going.../%%";
        }
        if(global.flag[425] == 1) {
            global.msg[0]= "* What would Mettaton think if&  he saw me licking this&  plant of his...?/";
            global.msg[1]= "* Eh..^1. who cares./%%";
        }
    }
    if(y > 120) {
        if(x > 600 && x < 660) {
            global.msg[0]= "* I work at the CORE^1.&* The inside is a maze made of&  swappable parts.../";
            global.msg[1]= "* That means we can shuffle the&  layout at will./";
            global.msg[2]= "* Boy^1, was today a FUN day^1!&* I sure love PUZZLE!!!/%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "* So^1, if we\\'re leaving^1, will&  my job...?/";
                global.msg[1]= "* Ugh^1, and I just got a raise^1!&* Well^1, guess every apple has&  its CORE^1, heheh./%%";
            }
            if(global.flag[425] == 1) {
                global.msg[0]= "* Today^1, we received the&  promise of a lot of money&  from a strange source./";
                global.msg[1]= "* It may not be kosher^1, but..^1.&* Whew^1! I love puzzle!/%%";
            }
        }
        if(x > 510 && x < 540) {
            global.msg[0]= "* Originally^1, we dug mazes&  with puzzles in order to&  foil human attacks./";
            global.msg[1]= "* But now^1, building things&  winding and confusing...^1.&* It\\'s some awful tradition./";
            global.msg[2]= "* You can\\'t go (ugh) two feet&  without being up to your&  armpits in puzzles./%%";
            if(global.flag[7] == 1) {
                global.msg[0]= "* The surface world..^1.&* Really!/";
                global.msg[1]= "* Maybe I\\'ll be able to&  go two feet without running&  into a puzzle./%%";
            }
            if(global.flag[425] == 1) {
                global.msg[0]= "* One thing I can say.../";
                global.msg[1]= "* I respect Mettaton for not&  putting any puzzles here./";
                global.msg[2]= "* At another hotel^1, I had&  to find 12 magic keys just to&  unlock the shower./%%";
            }
        }
    }
}
if(room == 178) {
    global.msg[0]= "* Mettaton looked really..^1.&* Really cool in that dress./";
    global.msg[1]= "* It sort of makes me feel like&  I could wear one^1, too!/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Mettaton..^1.!&* He recognized my voice from&  when I called in^1, and.../";
        global.msg[1]= "* He..^1. he gave me his dress^1!&* I\\'m so...^1!&* Ha ha ha!/%%";
    }
    if(global.flag[425] == 1)
        global.msg[0]= "* Please don\\'t talk to me^1.&* I am feeling discouraged&  about something./%%";
}
if(room == 183) {
    global.msg[0]= "* Welcome to MTT Resort - &* Hotland\\'s biggest apartment-&  building-turned-hotel!/";
    global.msg[1]= "* Whether you\\'re here for a night&  or still live here^1, MTT Resort&  prides itself on a great stay!/";
    global.msg[2]= "* Just passing through...^1? Nice^1!&* MTT Resort prides itself on&  being passed through!/%%";
    if(global.flag[7] == 1) {
        global.msg[0]= "* Sorry - the resort\\'s shutting&  down./";
        global.msg[1]= "* But I think you\\'ll find it\\'s&  still great to pass through!/%%";
    }
    if(global.flag[425] == 1) {
        global.msg[0]= "* Welcome to MTT Resort^1!&* Have you seen Mettaton?/";
        global.msg[1]= "* He hasn\\'t come by lately^1.&* I have a lot of respect for&  that man./";
        global.msg[2]= "* I had trouble getting a job&  because I am so pointy and&  angular./";
        global.msg[3]= "* But^1, being a rectangle^1, he&  understood my struggles./%%";
    }
}
if(room == 158) {
    if(x > 170) {
        global.msg[0]= "* I love hot dogs!/";
        global.msg[1]= "* Hey..^1.&* Isn\\'t it weird there\\'s&  SNOW on that guy\\'s roof?/";
        global.msg[2]= "* ... guess he\\'s just too lazy&  to clean it off./%%";
        if(!instance_exists(obj_sans_room )) {
            global.msg[0]= "* I love hot dogs!/";
            global.msg[1]= "* But the hot dog guy left..^1.&* Even though all of his&  stuff is still here./";
            global.msg[2]= "* ... guess he\\'s just too lazy&  to clean it away./%%";
        }
        if(global.flag[7] == 1) {
            global.msg[0]= "* I wanted another hot dog^1.&* But the hot dog guy never&  came back./";
            global.msg[1]= "* Besides that^1?&* Today was fine./";
            global.msg[2]= "* Count your blessings^1.&* Even if you don\\'t get a&  second hot dog./%%";
        }
    } else  global.msg[0]= "* Toasty bun!/%%";
}
if(room == 128) global.msg[0]= "* (It\\'s hard-boiled.)/%%";
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
