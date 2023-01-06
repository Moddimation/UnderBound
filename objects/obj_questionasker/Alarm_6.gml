global.msg[0]= "ERROR? %%";
if(correct != answer) {
    obj_mettatonb_quiz.right= 1;
    instance_create(obj_mettatonb_body.x + 94, obj_mettatonb_body.y - 60, obj_shockermaker );
    snd_play(snd_shock );
    obj_heart.movement= 99;
    alarm[5]= 40;
    if(q == 1) global.msg[0]= "HAHAHA, YOU WISH!&WRONG!";
    if(q == 2) global.msg[0]= "WRONG! IF ONLY ALPHYS&COULD HELP!";
    if(q == 3) global.msg[0]= "NOPE! TOO BAD ALPHYS&CAN\\'T HELP!";
    if(q == 4) global.msg[0]= "WRONG!!! WRONG!!!&WROOOOOOOONG!!";
    if(q == 5) global.msg[0]= "COMPLETELY UTTERLY&WRONG!!!!!!";
    if(q == 6) global.msg[0]= "BOY, THAT\\'S&EMBARRASSING, HUH?";
    if(q == 7) global.msg[0]= "TIME\\'S UP!&GUESS THAT\\'S A NO?? ";
    if(q == 8) global.msg[0]= "NO NO NO!&CAN\\'T YOU READ!?";
}
if(correct == answer) {
    if(q == 1) global.msg[0]= "RIGHT! SOUNDS LIKE&YOU GET IT!";
    if(q == 2) global.msg[0]= "CORRECT! WHAT A&TERRIFIC ANSWER!";
    if(q == 3) global.msg[0]= "TOO EASY FOR&YOU, HUH??????????";
    if(q == 4) global.msg[0]= "WONDERFUL! I\\'M&ASTOUNDED, FOLKS!";
    if(q == 5) global.msg[0]= "CORRECT! YOU\\'RE SO&LUCKY TODAY!!!";
    if(q == 6) global.msg[0]= "I\\'M SO FLATTERED YOU&REMEMBERED!";
    if(q == 7) global.msg[0]= "GREAT ANSWER!&I LOVE IT!!!!!!!";
    if(q == 8) global.msg[0]= "OF COURSE THAT&WAS EASY FOR YOU!";
}
if(q != 6)
    scr_blcon_x(obj_mettatonb_body.x + 95, obj_mettatonb_body.y - 100);
else  scr_blcon_x(obj_mettatonb_body.x + 95, obj_mettatonb_body.y - 170);
global.msg[0]= "* The quiz show continues.";

/* */
/*  */
