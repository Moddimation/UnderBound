if(stringpos < string_length(originalstring)) {
    stringpos++;
    alarm[0]= textspeed;
    if(string_char_at(originalstring, stringpos) == "^" && string_char_at(originalstring, stringpos + 1) != "0") {
        n= real(string_char_at(originalstring, stringpos + 1));
        alarm[0]= n * 10;
    }
    if(string_char_at(originalstring, stringpos) != "" && string_char_at(originalstring, stringpos) != " " && string_char_at(originalstring, stringpos) != "&" && string_char_at(originalstring, stringpos) != "^" && string_char_at(originalstring, stringpos - 1) != "^" && string_char_at(originalstring, stringpos) != "\\" + chr(ord("\"")) && string_char_at(originalstring, stringpos - 1) != "\\" + chr(ord("\"")) && string_char_at(originalstring, stringpos) != "/" && string_char_at(originalstring, stringpos) != "%") {
        snd_stop(txtsound);
        snd_play(txtsound);
    }
    if(string_char_at(originalstring, stringpos) == "&")
        stringpos++;
    if(string_char_at(originalstring, stringpos) == "\\" + chr(ord("\""))+" + ")
        stringpos+= 2;
}

