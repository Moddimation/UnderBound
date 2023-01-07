global.msg[0]= " THIS IS AN ERROR& MESSAGE^1.& REALLY!!!/%%";
if(global.flag[67] == -1) {
    global.msg[0]= " YOU\\'RE TOO WEAK!!& I WAS EASILY ABLE& TO CAPTURE YOU!!!/";
    global.msg[1]= " I WILL NOW SEND& YOU TO THE& CAPTURE ZONE!!/";
    global.msg[2]= " OR^1, AS SANS& CALLS IT^1.../";
    global.msg[3]= " OUR GARAGE???/";
    global.msg[4]= " YOU\\'RE IN THE& DOGHOUSE NOW!/";
    global.msg[5]= " NYEH HEH HEH HEH& HEH HEH HEH!!!/%%";
}
if(global.flag[67] == -2) {
    global.msg[0]= " WELL!!^1! YOU MAY& HAVE CLEVERLY& ESCAPED FROM& JAIL BEFORE.../";
    global.msg[1]= " BUT THIS TIME^1,& I\\'VE UPGRADED& THE FACILITIES./";
    global.msg[2]= " NOT ONLY WILL& YOU BE& TRAPPED.../";
    global.msg[3]= " BUT YOU WON\\'T& EVEN WANT& TO LEAVE!!!/";
    global.msg[4]= " NYEH HEH HEH HEH& HEH HEH HEH!!!/%%";
}
if(global.flag[67] == -3) {
    global.msg[0]= " YOU ARE...& PERSISTENT!/";
    global.msg[1]= " BUT^1!& IT JUST WON\\'T& WORK ON ME!/";
    global.msg[2]= " I AM THE& PERSISTENTEST!/";
    global.msg[3]= " AND IF YOU& THINK YOU ARE& PERSISTENESTER.../";
    global.msg[4]= " THAT IS WRONG^1!& GRAMATICALLY& WRONG!/";
    global.msg[5]= " BECAUSE THE& CORRECT FORM& WOULD BE.../";
    global.msg[6]= " NOT AS& PERSISTENTEST AS& PAPYRUS^1, THE& PERSISTENTESTEST!/" + chr(ord("\"")) + "";
    global.msg[7]= " I HOPE YOU& ENJOYED THIS& LESSON./";
    global.msg[8]= " NYEH HEH HEH HEH& HEH HEH HEH!!!/%%";
}
global.typer= 22;
// OBJ_WRITER
with(782) instance_destroy();
blcon= instance_create(obj_papyrusboss.x + 145, obj_papyrusboss.y + 52, obj_blconwdflowey );
blconwd= instance_create(blcon.x + 15, blcon.y + 10, OBJ_WRITER );
alarm[5]= 1;



