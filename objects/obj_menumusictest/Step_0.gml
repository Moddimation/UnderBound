if(keyboard_check(37)) {
    dongusvol-= 0.02;
    caster_set_volume(dangus, dongusvol);
    caster_set_volume(dongus, dongusvol - 1);
    caster_set_volume(dungus, dongusvol - 2);
}
if(keyboard_check(39)) {
    dongusvol+= 0.02;
    caster_set_volume(dangus, dongusvol);
    caster_set_volume(dongus, dongusvol - 1);
    caster_set_volume(dungus, dongusvol - 2);
}

/* */
/*  */
