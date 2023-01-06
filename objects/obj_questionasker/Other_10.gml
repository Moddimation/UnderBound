q++;
quiztimer= 300;
phase= 1;
answer= -1;
alarm[4]= 90;
obj_heart.movement= 99;
if(q == 99) {
    alarm[4]= 60;
    qtext= "What\\'s a pretzel\\'s#favorite color?";
    a1= "Black";
    a2= "Yellow";
    a3= "Red";
    a4= "Dusk";
    correct= 2;
    event_user(1);
}
if(q == 1) {
    alarm[4]= 80;
    qtext= "What\\'s the prize#for answering#correctly?";
    a1= "Money";
    a2= "Mercy";
    a3= "New car";
    a4= "More questions";
    correct= 3;
    event_user(1);
}
if(q == 2) {
    alarm[4]= 60;
    qtext= "What\\'s the king\\'s#full name?";
    a1= "Lord Fluffybuns";
    a2= "Fuzzy Pushover";
    a3= "Asgore Dreemurr";
    a4= "Dr. Friendship";
    correct= 2;
    event_user(1);
}
if(q == 3) {
    alarm[4]= 60;
    qtext= "What are robots#made of?";
    a1= "Hopes&Dreams";
    a2= "Metal&Magic";
    a3= "Snips&Snails";
    a4= "Sugar&Spice";
    correct= 1;
    event_user(1);
}
if(q == 4) {
    qtext= "Two trains, Train A and Train B,#simultaneously depart Station A#and Station B.#Station A and Station B are 252.5 miles#apart from each other.#Train A is moving at 124.7mph towards#Station B, and Train B is moving at#253.5mph towards station A.#If both trains departed at 10:00AM and it#is now 10:08, how much longer until#both trains pass each other?";
    a1= "31.054 minutes";
    a2= "16.232 minutes";
    a3= "32.049 minutes";
    a4= "32.058 minutes";
    correct= 3;
    alarm[4]= 90;
    event_user(1);
}
if(q == 5) {
    alarm[4]= 60;
    qtext= "How many flies are#in this jar?";
    a1= "54";
    a2= "53";
    a3= "55";
    a4= "52";
    correct= 0;
    event_user(1);
    instance_create(280, 120, obj_flyjar );
}
if(q == 6) {
    alarm[4]= 60;
    qtext= "What monster is this?";
    a1= "Froggit";
    a2= "Whimsun";
    a3= "Moldsmal";
    a4= "Mettaton";
    correct= 3;
    event_user(1);
    instance_create(250, 120, obj_zoomaton );
}
if(q == 7) {
    qtext= "Would you smooch#a ghost?";
    a1= "Heck Yeah";
    a2= "Heck Yeah";
    a3= "Heck Yeah";
    a4= "Heck Yeah";
    correct= 5;
    alarm[4]= 30;
    event_user(1);
}
if(q == 8) {
    alarm[4]= 45;
    qtext= "How many letters in#the name Mettaton";
    a1= "special1";
    a2= "special1";
    a3= "special1";
    a4= "special1";
    correct= 2;
    event_user(1);
}
if(q == 9) {
    alarm[4]= 200;
    qtext= "In the dating#simulation video game#" + chr(ord("\"")) + "Mew Mew Kissy Cutie" + chr(ord("\"")) + "#what is Mew Mew\\'s#favorite food?";
    a1= "Froggit";
    a2= "Whimsun";
    a3= "Moldsmal";
    a4= "Mettaton";
    correct= 5;
}
if(q == 10) {
    alarm[4]= 70;
    qtext= "Who does Dr. Alphys#have a crush on?";
    a1= "Undyne";
    a2= "Asgore";
    a3= "The human";
    a4= "Don\\'t know";
    correct= 6;
    event_user(1);
}
if(q == 14) {
    qtext= "How bright is#this text?";
    a1= "85% Bright";
    a2= "84% Bright";
    a3= "86% Bright";
    a4= "83% Bright";
    correct= 1;
    alarm[4]= 60;
    event_user(1);
}

/* */
/*  */
