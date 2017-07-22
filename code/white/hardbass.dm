/client/verb/local_harbass()
	set category = "Admin"
	set name = "Play Local Hardbass"
	var/hard = 'sound/hardbass/hardbass.ogg'
	if(ckey == "psuchoo" || ckey == "joctopus")
		log_admin("[key_name(src)] played a LOCAL HARDBASS OH MY GODNESS")
		playsound(get_turf(src.mob), hard, 50, 0, 0)
		world << "OH HARDBASS-HARDBASS-HARDBASS-HARDBASS-HARDBASS"
	else
		usr << "you isn't joctopus fuck you you fuck"