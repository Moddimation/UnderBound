moved= 0;
prevx= x;
prevy= y;
if(moving == 1 && moved == 0) {
    moving= 3;
    moved= 1;
}
if(moving == 2 && moved == 0) {
    moving= 4;
    moved= 1;
}
if(moving == 3 && moved == 0) {
    moving= 1;
    moved= 1;
}
if(moving == 4 && moved == 0) {
    moving= 2;
    moved= 1;
}
electrocute= 0;

