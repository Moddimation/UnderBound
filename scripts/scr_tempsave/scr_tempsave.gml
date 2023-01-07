function scr_tempsave() {
	filechoicebk2= global.filechoice;
	global.filechoice= 9;
	script_execute(scr_saveprocess );
	global.filechoice= filechoicebk2;



}
