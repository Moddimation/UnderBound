myinteract= 3;
global.msc= 0;
global.typer= 5;
global.facechoice= 0;
global.faceemotion= 0;
global.msg[0]= "* There you are^1, dearie^1.&* You are always welcome in&  my parlor!/";
global.msg[1]= "* Just stay on your best&  behavior^1~&* Ueee hee hee hee~/%%";
if(global.flag[7] == 1) {
    global.msg[0]= "* Bonjour^1, dearie^1~&* I just finished tallying up&  all of our donations!/";
    global.msg[1]= "* We\\'ve finally raised enough&  to rescue all the spiders&  inside of the RUINS./";
    global.msg[2]= "* And we\\'ll also be able to&  afford...!/";
    global.msg[3]= "* ... nothing^1, because we&  only sold one donut./";
    global.msg[4]= "* What\\'s wrong with everyone^1?&* Don\\'t they like spiders~/%%";
    if(global.flag[59] >= 1)
        global.msg[3]= "* 4 pairs of stylish sunglasses&  for every spider!/%%";
    if(global.flag[59] >= 13)
        global.msg[3]= "* 4 pairs of waterproof booties&  for every spider!/%%";
    if(global.flag[59] >= 25)
        global.msg[3]= "* 4 pairs of stylish heels for&  every spider!/%%";
    if(global.flag[59] >= 40)
        global.msg[3]= "* A spider baseball field^1!&* We\\'ve already got the baseball&  donuts ready~/%%";
    if(global.flag[59] >= 70)
        global.msg[3]= "* A spider football stadium^1!&* We\\'ll play with 4 balls on the&  field at once!/%%";
    if(global.flag[59] >= 100) {
        global.msg[3]= "* A brand new bakery^1!&* Thank you so much^1, dearie!/";
        global.msg[4]= "* It\\'s all because of you^2 &* (r money)./%%";
    }
    if(global.flag[59] >= 9000) {
        global.msg[3]= "* A vacation anywhere in the&  entire world!/";
        global.msg[4]= "* Should we go to the tropics^1?&* Or a creepy abandoned house^1?&* We can\\'t decide~/%%";
    }
}
mydialoguer= instance_create(0, 0, obj_dialoguer );
talkedto++;

/* */
/*  */
