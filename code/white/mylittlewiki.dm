mob/verb/mylittlewiki()
	set category = "OOC"
	set name = "Open Joctopus's Wiki"
	// wikistart
	var/dat = "<h1>My Little Wiki</h1><hr>"
	// wiki title end
	// changelog start
	dat += "������ ���������:<br>"
	dat += "��������� �������� � ������. date(23.07.17 3:30)"

	dat += "<hr>"
	// changelog end
	// ready categories start
	dat += "���������:<br>"
	dat += "<A href=?chem>�����</a>"

	var/datum/browser/popup = new(usr, "My Little Wiki", "My Little Wiki", 340, 480)
	popup.set_content(sanitize_russian(dat))
	popup.open()

client/Topic(href)
	if(href == "chem")
		var/dat_chem = "<h1>Oh that Chemistry!</h1><hr>"/*
		dat_chem += "<h2>�������� ������� ��������:<br>"
		dat_chem += "  ������������ �������<br>	������������ ��� ������, ��������� �� ����<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  �������������������� �������<br>	������������ ��� ���������� ������������, ��������� �� ����<br>	1 Aluminium, 1 Hydrogen, 1 Sulfuric Acid, 1 Oxygen<br>"
		dat_chem += "  ������� ������� � ��������<br>	������������ ��� ������, ��������� �� ����<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  ������������ �������<br>	������������ ��� ������, ��������� �� ����<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  ������������ �������<br>	������������ ��� ������, ��������� �� ����<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  ������������ �������<br>	������������ ��� ������, ��������� �� ����<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  ������������ �������<br>	������������ ��� ������, ��������� �� ����<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"*/
		dat_chem += {"<!DOCTYPE html>
		<html>
			<table align="center", border="2", width="500">
			<tr>
				<td>��������</td><td>��������</td><td>������</td>
			</tr>
			<tr>
				<td>������������ �������</td><td>������������ ��� ������, ��������� �� ����</td><td>1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine</td>
			</tr>
			<tr>
				<td>�������������������� �������</td><td>������������ ��� ���������� ������������, ��������� �� ����</td><td>1 Aluminium, 1 Hydrogen, 1 Sulfuric Acid, 1 Oxygen</td>
			</tr>
			<tr>
				<td>������� ������� � ��������</td><td>������������ ��� ������ � ���������� ������������, ��������� �� ����</td><td>1 Sodium Chloride, 1 Water, 1 Sugar</td>
			</tr>
			</table>
		</html>"}
		var/datum/browser/popup_chem = new(usr, sanitize_russian("�����"), sanitize_russian("�����"), 600, 800)
		popup_chem.set_content(sanitize_russian(dat_chem))
		popup_chem.open()


