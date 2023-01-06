SCR_TEXTTYPE(global.typer);
stringno= 0;
stringpos= 1;
lineno= 0;
halt= 0;
myx= writingx;
myy= writingy;
x= round(x);
y= round(y);
script_execute(SCR_TEXT , global.msc);
n= 0;
while(global.msg[n] != "%%%") {
    mystring[n]= global.msg[n];
    n++;
}
originalstring= mystring[0];
dfy= 0;
stringpos= string_length(originalstring);


/*  */
