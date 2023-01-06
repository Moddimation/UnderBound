buffer--;
if(buffer > 0 && myinteract == 1) myinteract= 0;
if(myinteract == 1 && global.interact == 0) {
    caster_play(338, 0.6, 0.6);
    myinteract= 2;
    global.interact= 1;
    image_speed= 0.2;
    sistext= instance_create(0, 0, obj_sistertext );
    if(talkedto == 1) {
        with(sistext)
            phrase= "Part of me wants to#see my new " + chr(ord("\"")) + "brother" + chr(ord("\"")) + "#Aaron. ";
    }
    if(talkedto == 2) {
        with(sistext) phrase= "But most other parts#of me... don\\'t. ";
    }
}
if(myinteract == 2 && !instance_exists(sistext)) {
    talkedto++;
    if(talkedto == 3) talkedto= 0;
    image_speed= 0;
    image_index= 0;
    myinteract= 0;
    global.interact= 0;
    buffer= 4;
}

/* */
/*  */
