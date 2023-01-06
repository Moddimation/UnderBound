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
if(killed == 0) global.flag[27]= 1;

