col= 0;
counter= 0;
type= 0;
shake= 0;
word= "DEATH";
word2= "LIFE";
chooser= floor(random(15));
if(chooser == 1) {
    word= "DESPAIR";
    word2= "HOPE";
}
if(chooser == 2) {
    word= "NIGHTMARE";
    word2= "DREAMS";
}
if(chooser == 3) {
    word= "SADNESS";
    word2= "HAPPINESS";
}
if(chooser == 4) {
    word= "RUIN";
    word2= "SUCCESS";
}
if(chooser == 5) {
    word= "HATRED";
    word2= "LOVE";
}
if(chooser == 6) {
    word= "TRAPPED";
    word2= "FREEDOM";
}
if(chooser == 7) {
    word= "SLAUGHTER";
    word2= "MERCY";
}
if(chooser == 8) {
    word= "DOOM";
    word2= "LUCK";
}
if(chooser == 9) {
    word= "TERROR";
    word2= "CALM";
}
if(chooser == 10) {
    word= "HORROR";
    word2= "RELIEF";
}
if(chooser == 11) {
    word= "CRUELTY";
    word2= "KINDNESS";
}
if(chooser == 12) {
    word= "MURDERER";
    word2= "DREAMER";
}
if(chooser == 13) {
    word= "DESTROY";
    word2= "CREATE";
}
if(chooser == 14) {
    word= "CORRUPT";
    word2= "PROTECT";
}
if(x < 320) hspeed= 3.5;
else  hspeed= -3.5;
if(obj_6book_master.con == 3) event_user(4);

