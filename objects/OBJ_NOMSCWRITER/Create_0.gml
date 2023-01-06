SCR_TEXTTYPE(global.typer);
stringno= 0;
stringpos= 1;
lineno= 0;
halt= 0;
myx= writingx;
myy= writingy;
n= 0;
while(global.msg[n] != "%%%") {
    mystring[n]= global.msg[n];
    n++;
}
originalstring= mystring[0];
dfy= 0;
action_set_alarm(textspeed, 0);

