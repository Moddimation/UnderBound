if(outside == 0) {
    OBJ_WRITER.halt= 3;
    global.monster[myself]= 0;
    if(global.mnfight == 2) global.mnfight= 1;
    outside= 1;
    instance_destroy();
}

