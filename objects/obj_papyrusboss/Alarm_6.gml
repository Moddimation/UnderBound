global.msc= 0;
if(stalk == 0)
    blcon= instance_create(x + 145, y + 52, obj_blconwdflowey );
else  blcon= sblcon;
gg= floor(random(3));
mycommand= round(random(100));
global.msg[0]= "  ...";
if(conversation == 0 && global.talked == 91)
    global.msg[0]= " OH^1, I SHOULD& HAVE BROUGHT ONE&  OF THOSE.";
if(conversation == 0 && whatiheard == -1 && global.talked != 91 && murder == 0) {
    talkify= 1;
    alarm[5]= -1;
    if(global.monsterhp[myself] < prevhp)
        global.msg[0]= " SO YOU\\'RE& SERIOUS.../";
    else  global.msg[0]= " SO YOU WON\\'T& FIGHT.../";
    global.msg[1]= " THEN^1, LET\\'S SEE& IF YOU CAN HANDLE& MY FABLED& \\'BLUE ATTACK!\\'/%%";
    global.msg[2]= "%%%";
    conversation= 1;
    mycommand= -1;
}
if(global.monsterhp[myself] <= 140 && fighto <= 14 && xfight < 4) {
    fighto= 14;
    xfight= 4;
}
if(global.monsterhp[myself] <= 80 && fighto < 15) {
    fighto= 15;
    xfight= 0;
}
if(truefight == 1) {
    talkify= 0;
    if(fighto == -1) global.msg[0]= " BEHOLD!";
    if(fighto == -1 && global.flag[66] == 1)
        global.msg[0]= " HMMM... I WONDER& WHAT I SHOULD& WEAR...";
    if(fighto == 0) global.msg[0]= " HOW HIGH CAN YOU& JUMP?";
    if(fighto == 0 && global.flag[66] == 1)
        global.msg[0]= " WHAT!? I\\'M NOT& THINKING ABOUT& THAT DATE THING!!";
    if(fighto == 0 && hearthp2 < hearthp && xxtalk == 0) {
        global.msg[0]= " TRY HOLDING THE& \\'UP\\' BUTTON TO& JUMP!!!";
        fighto= -1;
        xxtalk= 1;
    }
    if(fighto == 1)
        global.msg[0]= "\\\\X YEAH!& DON\\'T MAKE ME& USE MY \\\\RSPECIAL& ATTACK\\\\X!";
    if(fighto == 1 && hearthp2 < hearthp && xxtalk < 2) {
        global.msg[0]= " HOLD \\'UP\\' LONGER& TO JUMP HIGHER!& JEEZ!!!";
        fighto= 0;
        xxtalk= 2;
    }
    if(fighto == 2)
        global.msg[0]= " I CAN ALMOST& TASTE MY FUTURE& POPULARITY!!!";
    if(fighto == 3)
        global.msg[0]= " PAPYRUS:& HEAD OF THE& ROYAL GUARD!";
    if(fighto == 4)
        global.msg[0]= " PAPYRUS:& UNPARALLELED& SPAGHETTORE!";
    if(fighto == 5)
        global.msg[0]= " UNDYNE WILL BE& REALLY PROUD& OF ME!!";
    if(fighto == 6)
        global.msg[0]= " THE KING WILL& TRIM A HEDGE& IN THE SHAPE& OF MY SMILE!!!";
    if(fighto == 7)
        global.msg[0]= " MY BROTHER WILL& ... WELL, HE& WON\\'T CHANGE& VERY MUCH.";
    if(fighto == 8)
        global.msg[0]= " I\\'LL HAVE LOTS& OF ADMIRERS!!& BUT...";
    if(fighto == 9)
        global.msg[0]= " HOW WILL I& KNOW IF PEOPLE& SINCERELY LIKE& ME???";
    if(fighto == 9 && global.flag[66] == 1)
        global.msg[0]= " WILL ANYONE LIKE& ME AS SINCERELY& AS YOU?";
    if(fighto == 10)
        global.msg[0]= " SOMEONE LIKE& YOU IS REALLY& RARE...";
    if(fighto == 11)
        global.msg[0]= " I DON\\'T THINK& THEY\\'LL LET YOU& GO...";
    if(fighto == 11 && global.flag[66] == 1)
        global.msg[0]= " AND DATING MIGHT& BE KIND OF& HARD...";
    if(fighto == 12)
        global.msg[0]= " AFTER YOU\\'RE& CAPTURED AND& SENT AWAY.";
    if(fighto == 13) global.msg[0]= " URGH...& WHO CARES!& GIVE UP!!";
    if(fighto == 14 && xfight == 0)
        global.msg[0]= "\\\\X GIVE UP OR& FACE MY...& \\\\RSPECIAL ATTACK\\\\X!!!";
    if(fighto == 14 && xfight == 1)
        global.msg[0]= "\\\\X YEAH!!!& VERY SOON I WILL& USE MY& \\\\RSPECIAL ATTACK\\\\X! ";
    if(fighto == 14 && xfight == 2)
        global.msg[0]= "\\\\X NOT TOO LONG& AND I WILL& USE THAT& \\\\RSPECIAL ATTACK\\\\X!!!";
    if(fighto == 14 && xfight > 2)
        global.msg[0]= "\\\\X THIS IS YOUR& LAST CHANCE...& BEFORE MY& \\\\RSPECIAL ATTACK\\\\X!!";
    if(fighto == 14 && xfight > 3)
        global.msg[0]= "\\\\X BEHOLD...!& MY \\\\RSPECIAL& ATTACK\\\\X!";
    if(fighto == 15)
        global.msg[0]= " *SIGH* HERE\\'S AN& ABSOLUTELY& NORMAL ATTACK.";
}
if(whatiheard > -1 && fighto < 2 && fighto < 0) {
    talkify= 0;
    if(whatiheard == 0 && fighto < 2)
        global.msg[0]= " NYEH HEH HEH!";
    if(whatiheard == 1)
        global.msg[0]= " I DON\\'T DESERVE& SUCH HOSPITALITY& FROM YOU ...";
    if(whatiheard == 1 && insult == 2)
        global.msg[0]= " YOUR BARBS HIDE A& HIDDEN AFFECTION^1!& YOU EMOTIONAL& CACTUS!";
    if(whatiheard == 1 && insult > 2)
        global.msg[0]= " DON\\'T WASTE YOUR& WORDS ON ME!";
    if(whatiheard == 6 || whatiheard == 7 || whatiheard == 3)
        global.msg[0]= " LET\\'S DATE& L-LATER!^1!& AFTER I CAPTURE& YOU!";
}
if(murder == 1) global.msg[0]= "  ...";
global.typer= 22;
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_WRITER );
global.border= 5;
obj_heart.x= round((global.idealborder[0] + global.idealborder[1]) / 2) - 8;
obj_heart.y= round((global.idealborder[2] + global.idealborder[3]) / 2) - 8;
stalk= 0;

/* */
/*  */
