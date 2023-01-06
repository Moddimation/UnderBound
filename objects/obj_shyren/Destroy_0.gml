if(mercymod > 10 && global.monsterhp[myself] == global.monstermaxhp[myself])
    global.goldreward[3]+= 30;
if(killed == 0) global.flag[27]= 1;
scr_monsterdefeat(0, 0, 0, 0, 0);
with(mypart1) instance_destroy();
if(killed == 0) agent.image_alpha= 0.5;
else  {
    agent.image_index= 1;
    global.flag[81]= 1;
}
i= 0;
repeat(5)  {
    caster_free(note[i]);
    i++;
}
caster_free(longnote[0]);
caster_free(longnote[1]);
caster_free(badnote[0]);
caster_free(badnote[1]);
caster_free(badnote[2]);

