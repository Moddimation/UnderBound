if(t == 0 && global.interact == 0) {
    global.typer= 5;
    global.facechoice= 0;
    global.faceemotion= 0;
    global.msc= 0;
    t= 1;
    if(global.flag[368] == 1) donotcall= 1;
    if(room == 161) {
        global.msc= 754;
        if(global.flag[409] == 1) donotcall= 1;
        global.flag[409]= 1;
    }
    if(room == 165 && ax == 0) {
        if(global.flag[369] < 25) {
            if(global.flag[369] < 24 && ax == 0) {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* oopswait how\\'s the humnan&  doing/%%";
                global.flag[369]= 24;
            }
            if(global.flag[369] < 25 && ax == 0) {
                if(global.flag[67] == 1) donotcall= 1;
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* Top 10 Shows That Make You&  Forget To Do Your Frickin Job/%%";
                global.flag[369]= 25;
            }
        } else  donotcall= 1;
    }
    if(room == 164 && ax == 0) {
        if(global.flag[369] < 23) {
            if(global.flag[369] < 21 && ax == 0) {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* OMG? ppl think Mew Mew 2&  is better than Mew Mew 1?/";
                global.msg[1]= "* LOLLLLL that\\'s a joke&  right.../%%";
                global.flag[369]= 21;
            }
            if(global.flag[369] < 22 && ax == 0) {
                if(global.flag[67] == 1) donotcall= 1;
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* omg... DONT THEY GET IT RUINS&  Mew Mew\\'s ENTIRE CHARACTER ARC/%%";
                global.flag[369]= 22;
            }
            if(global.flag[369] < 23 && ax == 0) {
                if(global.flag[67] == 1) donotcall= 1;
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* My Mew Mew 2 Review:/";
                global.msg[1]= "* Mew Mew Kissy Cutie 2 Is&  Neither Kissy Nor Cutie.&* Its Trash. 0 stars/%%";
                global.flag[369]= 23;
            }
        } else  donotcall= 1;
    }
    if(room == 163 && ax == 0) {
        if(global.flag[369] < 20) {
            global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* that\\'s the last time i try&  to help with a puzzle lmao/%%";
            global.flag[369]= 20;
        } else  donotcall= 1;
    }
    if(room == 159 && ax == 0) {
        if(global.flag[369] < 19) {
            if(global.flag[369] < 16 && ax == 0) {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS posted a picture.\\\\W &* dinner with the girlfriend ;)/";
                global.msg[1]= "* (It\\'s a picture of a catgirl&  figurine next to a bowl of&  instant noodles.)/%%";
                global.flag[369]= 16;
            }
            if(global.flag[369] < 17 && ax == 0) {
                if(global.flag[67] == 1) donotcall= 1;
                ax= 1;
                global.msg[0]= "\\\\YCoolSkeleton95 posted a picture.\\\\W &* ARE WE POSTING HOT " + chr(ord("\"")) + "PICS???" + chr(ord("\"")) + "&* HERE IS ME AND MY COOL FRIEND/";
                global.msg[1]= "* (It\\'s a picture of Papyrus&  flexing in front of a mirror.)&* (He is wearing sunglasses.)/";
                global.msg[2]= "* (Giant muscular biceps are&  pasted onto his arms.)/";
                global.msg[3]= "* (The biceps are also wearing&  sunglasses.)/%%";
                global.flag[369]= 17;
            }
            if(global.flag[369] < 18 && ax == 0) {
                if(global.flag[67] == 1) donotcall= 1;
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* LOL, CoolSkeleton95!&* ... that\\'s a joke^1, right?/%%";
                global.flag[369]= 18;
            }
            if(global.flag[369] < 19 && ax == 0) {
                if(global.flag[67] == 1) donotcall= 1;
                ax= 1;
                global.msg[0]= "\\\\YCoolSkeleton95 updated status.\\\\W &* THE ONLY JOKE HERE^1, IS&  HOW STRONG MY MUSCLES ARE./%%";
                global.flag[369]= 19;
            }
        } else  donotcall= 1;
    }
    if(room == 153) {
        if(global.flag[369] < 13) {
            global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* whatever!!! i\\'ll just explain&  it!!!/%%";
            global.flag[369]= 13;
        } else  donotcall= 1;
    }
    if(room == 151 && ax == 0) {
        if(global.flag[369] < 12) {
            ax= 1;
            global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* wonder if it would be unfun&  if i explained the puzzle.../%%";
            global.flag[369]= 12;
        } else  donotcall= 1;
    }
    if(room == 148 && ax == 0) {
        if(global.flag[369] < 11) {
            if(global.flag[369] < 10) {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* Oh My God i Forgot to Tell&  THem Where To Go/%%";
                global.flag[369]= 10;
            } else  {
                global.msg[0]= "\\\\YALPHYS posted a picture.\\\\W &* CUte PIC OF ME RIGHT NOW ^0.^0 /";
                global.msg[1]= "* (It\\'s a photo of a garbage can&  with several pink^1, glittery&  filters over it.)/%%";
                global.flag[369]= 11;
                ax= 1;
            }
        } else  donotcall= 1;
    }
    if(room == 147 && ax == 0) {
        if(global.flag[369] < 9) {
            if(global.flag[369] < 8) {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* OMG I DID IT!!!/";
                global.msg[1]= "* claws haven\\'t shook like that&  since undyne called me to ask&  about the weather... v.v/%%";
                global.flag[369]= 8;
            } else  {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* WAIT THERE\\'S NO WEATHER DOWN&  HERE WHY DID SHE CALL ME/%%";
                global.flag[369]= 9;
            }
        } else  donotcall= 1;
    }
    if(room == 145 && ax == 0) {
        if(global.flag[369] < 7) {
            if(global.flag[369] < 6) {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* I HATE USING THE PHONE I DON\\'T&  WANT TO DO THIS LMAO ^0.^0 /%%";
                global.flag[369]= 6;
            } else  {
                ax= 1;
                global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* omg ive had my claw over&  the last digit for 5 minutes/";
                global.msg[1]= "* omg i\\'m just gonna do it&* i\\'m just gonna call!!!!/%%";
                global.flag[369]= 7;
            }
        } else  donotcall= 1;
    }
    if(room == 143 && global.flag[369] > 3) donotcall= 1;
    if(room == 144 && global.flag[369] > 4) donotcall= 1;
    if(room == 144 && global.flag[369] == 4) {
        global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* gonna call them in a&  minute!!! =^0.^0=/%%";
        global.flag[369]= 5;
    }
    if(room == 143 && global.flag[369] == 3) {
        global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* for now i gotta call up the&  human and guide them =^0.^0=/%%";
        global.flag[369]= 4;
    }
    if(room == 143 && global.flag[369] == 2) {
        global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* well i know she\\'s unbeatable&  i\\'ll ask her abt it later ^0.^0 /%%";
        global.flag[369]= 3;
    }
    if(room == 143 && global.flag[369] < 2) {
        global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* just realized i didn\\'t watch&  undyne fight the human v.v/%%";
        global.flag[369]= 2;
    }
    if(room == 97 && global.flag[354] < 1) {
        global.msg[0]= " ";
        global.flag[354]= 1;
        instance_create(380, 40, obj_stalkerflowey );
        global.msc= 632;
        if(global.flag[368] == 1) donotcall= 1;
    }
    if(room == 162 && global.plot < 141) {
        if(global.flag[404] == 0)
            global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* (PIC OF ME GIVING A THUMBS UP&  AS I BACKFLIP INTO THE SUN)/%%";
        if(global.flag[404] == 1)
            global.msg[0]= "\\\\YALPHYS updated status.\\\\W &* OH MY GOD HOW DID THAT EVEN&  END UP WORKING LMAO/%%";
        global.plot= 141;
        if(global.flag[368] == 1) donotcall= 1;
    }
    if(donotcall == 0) snd_play(snd_textnoise );
    if(donotcall == 0) {
        mb= instance_create(obj_mainchara.x, obj_mainchara.y - 10, obj_musblcon );
        instance_create(0, 0, obj_dialoguer );
        global.interact= 1;
    }
}

/* */
/*  */
