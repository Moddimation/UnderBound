draw_set_color(16777215);
draw_set_font(2);
if(number == -1)
    draw_sprite_ext(sprite_index, image_index, x, y, 1, 1, rot, 16777215, 1);
if(number == 0) draw_text_transformed(90, 90, string_hash_to_newline("By Toby Fox"), 2, 2, 0);
if(number == 1) {
    draw_set_color(65535);
    draw_text(86, 30, string_hash_to_newline("Logo Design#Cutscene Artist#Overworld Artist+#Animator (Area 1.2.3)#Shop Artist (Area 2.3)#Tile Artist (Area 2)"));
    draw_set_color(16777215);
    draw_text_transformed(40, 130, string_hash_to_newline("Temmie Chang"), 2, 2, 0);
}
if(number == 2) {
    draw_set_color(65535);
    draw_text(60, 34, string_hash_to_newline("Tile Artist (Area3+4)#And Hypertester"));
    draw_set_color(16777215);
    draw_text(90, 74, string_hash_to_newline("Kenju"));
    draw_set_color(65535);
    draw_text(60, 104, string_hash_to_newline("Main BG Artist"));
    draw_set_color(16777215);
    draw_text(90, 124, string_hash_to_newline("Merrigo"));
    draw_set_color(65535);
    draw_text(60, 154, string_hash_to_newline("Assistant Monster Designer"));
    draw_set_color(16777215);
    draw_text(90, 174, string_hash_to_newline("Magnolia Porter"));
}
if(number == 3) {
    draw_set_color(65535);
    draw_text(60, 24, string_hash_to_newline("Extra Art and Testing"));
    draw_set_color(16777215);
    draw_text(90, 44, string_hash_to_newline("Gigi DG#Drak#Clairevoire"));
    draw_set_color(65535);
    draw_text(60, 104, string_hash_to_newline("Misc. Art"));
    draw_set_color(16777215);
    draw_text(90, 124, string_hash_to_newline("Easynam (Tile Area 1)#Guzusuru (Asgore Spear Reveal)"));
    draw_set_color(65535);
    draw_text(60, 164, string_hash_to_newline("Guest Monster Designs"));
    draw_set_color(16777215);
    draw_text(90, 184, string_hash_to_newline("" + chr(ord("\"")) + "Muffet" + chr(ord("\"")) + " - Michelle Czajkowski#" + chr(ord("\"")) + "Woshua" + chr(ord("\"")) + " - Inspired by OMOCAT"));
}
if(number == 4) {
    draw_set_color(65535);
    draw_text(60, 20, string_hash_to_newline("Photoshop#Flowey Battle Co-design"));
    draw_set_color(16777215);
    draw_text(90, 55, string_hash_to_newline("Everdraed"));
    draw_set_color(65535);
    draw_text(60, 95, string_hash_to_newline("Programming Help"));
    draw_set_color(16777215);
    draw_text(90, 115, string_hash_to_newline("Flashygoodness#Leon Arnott"));
    draw_set_color(65535);
    draw_text(60, 165, string_hash_to_newline("Other Monster Designs"));
    draw_set_color(16777215);
    draw_text(90, 185, string_hash_to_newline("Mike Reid#????????????"));
}
if(number == 5) {
    draw_set_color(65535);
    draw_text(60, 24, string_hash_to_newline("Guest NPC Concepts"));
    draw_set_color(16777215);
    draw_text(90, 44, string_hash_to_newline("Mushroom " + chr(ord("\"")) + "Ragel" + chr(ord("\"")) + " - Alexander Sward#" + chr(ord("\"")) + "Sam Byool" + chr(ord("\"")) + " - Ahmed Almutawa#Bah! " + chr(ord("\"")) + "Puzzle Guy" + chr(ord("\"")) + " - Summer Wine#Stars..? " + chr(ord("\"")) + "Loren" + chr(ord("\"")) + " - Colin MacDougall#Comedian Dad - Braxton Harris"));
    draw_set_color(65535);
    draw_text(60, 135, string_hash_to_newline("Guitar"));
    draw_set_color(16777215);
    draw_text(90, 155, string_hash_to_newline("Stephanie MacIntire"));
    draw_set_color(65535);
    draw_text(60, 185, string_hash_to_newline("Bratty & Catty Help"));
    draw_set_color(16777215);
    draw_text(90, 205, string_hash_to_newline("IPGD"));
}
if(won >= 1 && keyboard_multicheck(0) && alarm[5] > 20)
    alarm[5]= 20;


/*  */
