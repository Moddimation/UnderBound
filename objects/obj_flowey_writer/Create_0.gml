script_execute(SCR_TEXTTYPE_f , global.typer);
x= round(x);
y= round(y);
doak= 0;
stringno= 0;
stringpos= 1;
lineno= 0;
halt= 0;
writingx= round(writingx);
writingy= round(writingy);
myx= writingx;
myy= writingy;
n= 0;
while(global.msg[n] != "%%%") {
    mystring[n]= global.msg[n];
    n++;
}
originalstring= mystring[0];
dfy= 0;
alarm[0]= textspeed;


/*  */
