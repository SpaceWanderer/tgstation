//HTML ENCODE/DECODE + RUS TO CP1251 TODO: OVERRIDE rhtml_encode after fix
/proc/rhtml_encode(var/t)
	t = replacetext(t, "<", "&lt;")
	t = replacetext(t, ">", "&gt;")
	t = replacetext(t, "ÿ", "&#255;")
	return t

/proc/rhtml_decode(var/t)
	t = replacetext(t, "&gt;", ">")
	t = replacetext(t, "&lt;", "<")
	t = replacetext(t, "&#255;", "ÿ")
	return t


//UPPER/LOWER TEXT + RUS TO CP1251 TODO: OVERRIDE ruppertext
/proc/ruppertext(text as text)
	text = ruppertext(text)
	var/t = ""
	for(var/i = 1, i <= length(text), i++)
		var/a = text2ascii(text, i)
		if (a > 223)
			t += ascii2text(a - 32)
		else if (a == 184)
			t += ascii2text(168)
		else t += ascii2text(a)
	t = replacetext(t,"&#255;","ÿ")
	return t

/proc/rlowertext(text as text)
	text = rlowertext(text)
	var/t = ""
	for(var/i = 1, i <= length(text), i++)
		var/a = text2ascii(text, i)
		if (a > 191 && a < 224)
			t += ascii2text(a + 32)
		else if (a == 168)
			t += ascii2text(184)
		else t += ascii2text(a)
	return t


//RUS CONVERTERS
/proc/russian_to_cp1251(var/t)//CHATBOX
	return replacetext(t, "ÿ", "&#255;")

/proc/russian_to_utf8(var/t)//PDA PAPER POPUPS
	return replacetext(t, "ÿ", "&#1103;")

/proc/utf8_to_cp1251(t)
	return replacetext(t, "&#1103;", "&#255;")

/proc/cp1251_to_utf8(t)
	return replacetext(t, "&#255;", "&#1103;")

//Prepare text for edit. Replace "?" with "\?" for edition. Don't forget to call post_edit().
/proc/edit_cp1251(t)
	return replacetext(t, "&#255;", "\\ÿ")

/proc/edit_utf8(t)
	return replacetext(t, "&#1103;", "\\ÿ")

/proc/post_edit_cp1251(t)
	return replacetext(t, "\\ÿ", "&#255;")

/proc/post_edit_utf8(t)
	return replacetext(t, "\\ÿ", "&#1103;")

//input

/proc/input_cp1251(var/mob/user = usr, var/message, var/title, var/default, var/type = "message")
	var/t = ""
	switch(type)
		if("message")
			t = input(user, message, title, edit_cp1251(default)) as message
		if("text")
			t = input(user, message, title, default) as text
	t = russian_to_cp1251(t)
	return post_edit_cp1251(t)

/proc/input_utf8(var/mob/user = usr, var/message, var/title, var/default, var/type = "message")
	var/t = ""
	switch(type)
		if("message")
			t = input(user, message, title, edit_utf8(default)) as message
		if("text")
			t = input(user, message, title, default) as text
	t = russian_to_utf8(t)
	return post_edit_utf8(t)


var/global/list/rkeys = list(
	"?" = "f", "?" = "d", "?" = "u", "?" = "l",
	"?" = "t", "?" = "p", "?" = "b", "?" = "q",
	"?" = "r", "?" = "k", "?" = "v", "?" = "y",
	"?" = "j", "?" = "g", "?" = "h", "?" = "c",
	"?" = "n", "?" = "e", "?" = "a", "?" = "w",
	"?" = "x", "?" = "i", "?" = "o", "?" = "s",
	"?" = "m", "?" = "z"
)

//Transform keys from russian keyboard layout to eng analogues and rlowertext it.
/proc/sanitize_key(t)
	t = rlowertext(t)
	if(t in rkeys) return rkeys[t]
	return (t)

//TEXT MODS RUS
/proc/capitalize_cp1251(var/t as text)
	var/s = 2
	if (copytext(t,1,2) == ";")
		s += 1
	else if (copytext(t,1,2) == ":")
		s += 2
	return ruppertext(copytext(t, 1, s)) + copytext(t, s)

/proc/intonation(text)
	if (copytext(text,-1) == "!")
		text = "<b>[text]</b>"
	return text