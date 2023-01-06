s= sp * 3.14159265358979 / 2;
if(c == 0) {
    xinit-= sin(s / sp) * sf;
    x= xinit + sin(s / sp) * sf;
}
if(c == 1) {
    xinit-= cos(s / sp) * sf;
    x= xinit + cos(s / sp) * sf;
}
if(c == 2) {
    s= -sp * 3.14159265358979 / 2;
    xinit+= sin(s / sp) * sf;
    x= xinit + sin(s / sp) * sf;
    c= 0;
}
visible= 1;

