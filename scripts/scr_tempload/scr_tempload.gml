function scr_tempload() {
	filechoicebk3= global.filechoice;
	global.filechoice= 9;
	script_execute(scr_load );
	global.filechoice= filechoicebk3;



}
