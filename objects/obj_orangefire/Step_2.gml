if(!instance_exists(parent)) {
    instance_destroy();
    exit;
} else  {
    x= parent.x + rememberx;
    y= parent.y + remembery;
    siner++;
    x+= sin(siner / 3) * 2;
    y+= cos(siner / 3) * 2;
    exit;
}

