myx= writingx;
myy= writingy;
n= 1;
while(n < stringpos + 1) {
    nskip= 0;
    if(string_char_at(originalstring, n) == "&") {
        script_execute(SCR_NEWLINE );
        n++;
    }
    if(string_char_at(originalstring, n) == "^") {
        if(string_char_at(originalstring, n + 1) == "0") nskip= 1;
        else  n+= 2;
    }
    if(string_char_at(originalstring, n) == "\\" + chr(ord("\""))+" + ") {
        if(string_char_at(originalstring, n + 1) == "R")
            mycolor= 255;
        if(string_char_at(originalstring, n + 1) == "G")
            mycolor= 65280;
        if(string_char_at(originalstring, n + 1) == "W")
            mycolor= 16777215;
        if(string_char_at(originalstring, n + 1) == "Y")
            mycolor= 65535;
        if(string_char_at(originalstring, n + 1) == "X")
            mycolor= 0;
        if(string_char_at(originalstring, n + 1) == "B")
            mycolor= 16711680;
        if(string_char_at(originalstring, n + 1) == "O")
            mycolor= 4235519;
        if(string_char_at(originalstring, n + 1) == "P")
            mycolor= 16711935;
        if(string_char_at(originalstring, n + 1) == "C" && global.inbattle == 0) {
            if(!instance_exists(obj_choicer ))
                choicer= instance_create(0, 0, obj_choicer );
            choicer.creator= id;
            halt= 5;
        }
        if(string_char_at(originalstring, n + 1) == "M") {
            global.flag[20]= real(string_char_at(originalstring, n + 2));
            n++;
        }
        if(string_char_at(originalstring, n + 1) == "E") {
            global.faceemotion= real(string_char_at(originalstring, n + 2));
            n++;
        }
        if(string_char_at(originalstring, n + 1) == "F") {
            global.facechoice= real(string_char_at(originalstring, n + 2));
            global.facechange= 1;
            n++;
        }
        if(string_char_at(originalstring, n + 1) == "T") {
            newtyper= string_char_at(originalstring, n + 2);
            if(newtyper == "T") global.typer= 4;
            if(newtyper == "t") global.typer= 48;
            if(newtyper == "0") global.typer= 5;
            if(newtyper == "S") global.typer= 10;
            if(newtyper == "f") global.typer= 9;
            if(newtyper == "F") global.typer= 16;
            if(newtyper == "s") global.typer= 17;
            if(newtyper == "P") global.typer= 18;
            if(newtyper == "M") global.typer= 27;
            if(newtyper == "U") global.typer= 37;
            if(newtyper == "A") global.typer= 47;
            script_execute(SCR_TEXTTYPE , global.typer);
            global.facechange= 1;
            n++;
        }
        n+= 2;
    }
    if(string_char_at(originalstring, n) == "/") {
        halt= 1;
        if(string_char_at(originalstring, n + 1) == "%") halt= 2;
        if(string_char_at(originalstring, n + 1) == "^" && string_char_at(originalstring, n + 2) != "0")
            halt= 4;
        if(string_char_at(originalstring, n + 1) == "*") halt= 6;
        break;
    } else  {
        if(string_char_at(originalstring, n) == "%") {
            if(string_char_at(originalstring, n + 1) == "%") {
                instance_destroy();
                break;
            } else  {
                stringpos= 1;
                stringno++;
                originalstring= mystring[stringno];
                myx= writingx;
                myy= writingy;
                lineno= 0;
                alarm[0]= textspeed;
                myletter= " ";
                break;
            }
        } else  {
            if(myx > writingxend) script_execute(SCR_NEWLINE );
            myletter= string_char_at(originalstring, n);
            if(global.typer == 18) {
                if(myletter == "l" || myletter == "i") myx+= 2;
                if(myletter == "I") myx+= 2;
                if(myletter == "!") myx+= 2;
                if(myletter == ".") myx+= 2;
                if(myletter == "S") myx++;
                if(myletter == "?") myx+= 2;
                if(myletter == "D") myx++;
                if(myletter == "A") myx++;
                if(myletter == "\\'") myx++;
            }
            draw_set_font(myfont);
            draw_set_color(mycolor);
            if(shake > 38) {
                if(shake == 39) {
                    direction+= 10;
                    draw_text(myx + hspeed, myy + vspeed, string_hash_to_newline(myletter));
                }
                if(shake == 40)
                    draw_text(myx + hspeed, myy + vspeed, string_hash_to_newline(myletter));
                if(shake == 41) {
                    direction+= 10 * n;
                    draw_text(myx + hspeed, myy + vspeed, string_hash_to_newline(myletter));
                    direction-= 10 * n;
                }
                if(shake == 42) {
                    direction+= 20 * n;
                    draw_text(myx + hspeed, myy + vspeed, string_hash_to_newline(myletter));
                    direction-= 20 * n;
                }
                if(shake == 43) {
                    direction+= 30 * n;
                    draw_text(myx + hspeed * 0.7 + 10, myy + vspeed * 0.7, string_hash_to_newline(myletter));
                    direction-= 30 * n;
                }
            } else  {
                if(global.typer == 70 || global.typer == 71 || global.typer == 74 || global.typer == 75 || global.typer == 76 || global.typer == 77)
                    draw_text_transformed(myx + random(shake) - shake / 2, myy + random(shake) - shake / 2, string_hash_to_newline(myletter), 2, 2, 0);
                else 
                    draw_text(myx + random(shake) - shake / 2, myy + random(shake) - shake / 2, string_hash_to_newline(myletter));
            }
            myx+= spacing;
            n+= nskip;
            n++;
        }
    }
}


/*  */
