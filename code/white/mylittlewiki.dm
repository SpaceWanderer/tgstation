mob/verb/mylittlewiki()
	set category = "OOC"
	set name = "Open Joctopus's Wiki"
	// wikistart
	var/dat = "<h1>My Little Wiki</h1><hr>"
	// wiki title end
	// changelog start
	dat += "Список изменений:<br>"
	dat += "Закончена страница с химией. date(23.07.17 3:30)"
	dat += "Valtosin превосходит Б-гов! date(23.07.17 20:20)"

	dat += "<hr>"
	// changelog end
	// ready categories start
	dat += "Категории:<br>"
	dat += "<A href=?wiki_chem>Химия</a>"

	dat += "<hr>"
	// ready categories end
	// other href's start
	dat += "Остальные статьи:<br>"
	dat += "<a href=?wiki_heroes>Герои этой Вики</a>"
	// other href's end
	var/datum/browser/popup = new(usr, "My Little Wiki", "My Little Wiki", 340, 480)
	popup.set_content(sanitize_russian(dat))
	popup.open()

client/Topic(href)
	//
	// #CHEM Start
	if(href == "wiki_chem")
		var/dat_chem = "<h1>Oh that Chemistry!</h1><hr>"/*
		dat_chem += "<h2>Основные лечащие реактивы:<br>"
		dat_chem += "  Сульфадиазин Серебра<br>	Используется при ожогах, нанесение на кожу<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  Кровоостанавливающий порошок<br>	Используется при физических повреждениях, нанесение на кожу<br>	1 Aluminium, 1 Hydrogen, 1 Sulfuric Acid, 1 Oxygen<br>"
		dat_chem += "  Солевой раствор с глюкозой<br>	Используется при ожогах, нанесение на кожу<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  Сульфадиазин Серебра<br>	Используется при ожогах, нанесение на кожу<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  Сульфадиазин Серебра<br>	Используется при ожогах, нанесение на кожу<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  Сульфадиазин Серебра<br>	Используется при ожогах, нанесение на кожу<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"
		dat_chem += "  Сульфадиазин Серебра<br>	Используется при ожогах, нанесение на кожу<br>	1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine<br>"*/
		dat_chem += {"<!DOCTYPE html>
<html>
<head>
<style>
body {
	background: #111;
	color: #ccc;
	font-family: sans-serif;
	font-size: 8pt;
}


table {
	background: #222;
	width: 570px;
}

tr {
	background: #1a1a1a;
}

td {
	padding: 3px 10px
}
</style>
</head>
<table align="center" width="600">
	<tr>
		<td>
		Компоненты:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Ash</td><td>Базовый ингридиент</td><td>1 Oil при 480K</td>
	</tr>
	<tr>
		<td>Ash (альт.)</td><td>Базовый ингридиент</td><td>Поджечь кусочек бумаги и собрать пепел пробиркой</td>
	</tr>
	<tr>
		<td>Carpet</td><td>Создает ковер на полу</td><td>1 Space Drugs, 1 Blood</td>
	</tr>
	<tr>
		<td>Oil</td><td>Нужен для создания Ash</td><td>1 Welding Fuel, 1 Carbon, 1 Hydrogen</td>
	</tr>
	<tr>
		<td>Oil (альт.)</td><td>Нужен для создания Ash</td><td>Подберите масло оставшееся после роботов пробиркой</td>
	</tr>
	<tr>
		<td>Phenol</td><td>Используется в медицине</td><td>1 Water, 1 Chlorine, 1 Oil</td>
	</tr>
	<tr>
		<td>Acetone</td><td>Базовый ингридиент</td><td>1 Oil, 1 Welding Fuel, 1 Oxygen</td>
	</tr>
	<tr>
		<td>Diethylamine</td><td>Мощное удобрение, а также базовый ингридиент</td><td>1 Ammonia, 1 Ethanol</td>
	</tr>
	<tr>
		<td>Ammonia</td><td>Эффективное удобрение, а также базовый ингридиент</td><td>3 Hydrogen, 1 Nitrogen</td>
	</tr>
	<tr>
		<td>Saltpetre</td><td>Ингридиент для солей и пороха. На выходе 3, вместо 5. Увеличивает потенциал растений.</td><td>1 Potassium, 1 Nitrogen, 3 Oxygen</td>
	</tr>
	<tr>
		<td>Lye</td><td>Необходим для создания свечей/мыла</td><td>1 Sodium, 1 Hydrogen, 1 Oxygen</td>
	</tr>
	<tr>
		<td>Lye (альт.)</td><td>Необходим для создания свечей/мыла</td><td>1 Ash, 1 Water</td>
	</tr>
</table>
<table align="center" width="480">
	<tr>
		<td>
		Медицина:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td><td>Передоз.</td><td>Завис.</td><td>Тип</td></tr>
	<tr>
		<td>Silver Sulfadiazine</td><td>Лечит ожоги, нанесение на кожу</td><td>1 Ammonia, 1 Silver, 1 Sulfur, 1 Oxygen, 1 Chlorine</td><td>Нет</td><td>Нет</td><td>Burn</td>
	</tr>
	<tr>
		<td>Styptic Powder</td><td>Лечит физический урон, нанесение на кожу</td><td>1 Aluminium, 1 Hydrogen, 1 Oxygen, 1 Sulfuric Acid</td><td>Нет</td><td>Нет</td><td>Brute</td>
	</tr>
	<tr>
		<td>Saline-Glucose Solution</td><td>Имеет 33% шанс лечения ожогов и физических повреждений</td><td>1 Sodium Chloride, 1 Water</td><td>60</td><td>Нет</td><td>Brute, Burn</td>
	</tr>
	<tr>
		<td>Synthflesh</td><td>Лечит ожоги и физические повреждения, нанесение на кожу</td><td>1 Blood, 1 Carbon, Styptic Powder</td><td>Нет</td><td>Нет</td><td>Brute, Burn</td>
	</tr>
	<tr>
		<td>Charcoal</td><td>Лечит токсины и медленно выводит остальные химикаты</td><td>1 Ash, 1 Sodium Chloride</td><td>Нет</td><td>Нет</td><td>Toxin</td>
	</tr>
	<tr>
		<td>Salbutamol</td><td>Быстро лечит кислородное голодание</td><td>1 Salicyclic Acid, 1 Lithium, 1 Aluminium, 1 Bromine, 1 Ammonia</td><td>Нет</td><td>Нет</td><td>Oxyg</td>
	</tr>
	<tr>
		<td>Bicaridine</td><td>Лечит физический урон</td><td>1 Carbon, 1 Oxygen, 1 Sugar</td><td>30</td><td>Нет</td><td>Brute</td>
	</tr>
	<tr>
		<td>Kelotane</td><td>Лечит ожоги</td><td>1 Carbon, 1 Silicon</td><td>30</td><td>Нет</td><td>Burn</td>
	</tr>
	<tr>
		<td>Antitoxin</td><td>Выводит токсины</td><td>Toxin</td><td>30</td><td>Нет</td><td>Toxin</td>
	</tr>
	<tr>
		<td>Tricordrazine</td><td>Лечит весь базовый урон</td><td>1 Kelotane, 1 Bicaridine, 1 Antitoxin</td><td>30</td><td>Нет</td><td>Brute, Burn, Toxin</td>
	</tr>
	<tr>
		<td>Cryoxadone</td><td>Лечит все типы урона, работает только в холодном окружении</td><td>1 Stable Plasma, 1 Acetone, 1 Unstable Mutagen</td><td>Нет</td><td>Нет</td><td>All</td>
	</tr>
	<tr>
		<td>Clonexadone</td><td>Лечит последствия клонирования, работает только в холодном окружении</td><td>1 Cryoxadone, 1 Sodium, 5 Plasma (катализатор)</td><td>Нет</td><td>Нет</td><td>Clone</td>
	</tr>
	<tr>
		<td>Mannitol</td><td>Лечит урон мозга, полезен при клонировании</td><td>1 Hydrogen, 1 Water, 1 Sugar</td><td>Нет</td><td>Нет</td><td>Brain</td>
	</tr>
	<tr>
		<td>
		Продвинутая медицина:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td><td>Передоз.</td><td>Завис.</td><td>Тип</td></tr>
	<tr>
		<td>Salicyclic Acid</td><td>Если больше 50 физического урона, лечит 4. Если меньше, то лечит 0.5.</td><td>1 Sodium, 1 Phenol, 1 Carbon, 1 Oxygen, 1 Sulfuric Acid</td><td>25</td><td>Нет</td><td>Brute</td>
	</tr>
	<tr>
		<td>Oxandrolone</td><td>Если больше 50 ожогов, лечит 4. Если меньше, то лечит 0.5.</td><td>3 Carbon, 1 Phenol, 1 Hydrogen, 1 Oxygen</td><td>25</td><td>Нет</td><td>Burn</td>
	</tr>
	<tr>
		<td>Omnizine</td><td>Медленно лечит весь урон</td><td>Находится в Ambrosia Deus/нагретых Donk Pockets</td><td>30</td><td>Нет</td><td>Brute, Burn, Toxin, Oxyg</td>
	</tr>
	<tr>
		<td>Pentetic Acid</td><td>Выводит токсины и радиацию из крови вместе с другими химикатами</td><td>1 Welding Fuel, 1 Chlorine, 1 Ammonia, 1 Formaldehyde, 1 Sodium, 1 Cyanide</td><td>Нет</td><td>Нет</td><td>Rad, Toxin</td>
	</tr>
	<tr>
		<td>Perfluorodecalin</td><td>Лечит кислородный урон, но лишает голоса</td><td>1 Hydrogen, 1 Fluorine, 1 Oil нагреть 370K</td><td>Нет</td><td>Нет</td><td>Oxyg</td>
	</tr>
	<tr>
		<td>Atropine</td><td>Лечит ожоги, физический и кислородный урон, если пациент в критическом состоянии</td><td>1 Ethanol, 1 Acetone, 1 Diethylamine, 1 Phenol, 1 Sulphuric Acid</td><td>35</td><td>Нет</td><td>Brute, Burn, Oxyg</td>
	</tr>
	<tr>
		<td>Calomel</td><td>Быстро выводит химикаты из тела. Если здоровье выше 20, то наносит токсический урон</td><td>1 Mercury, 1 Chlorine нагреть 374K</td><td>Нет</td><td>Нет</td><td>Purge</td>
	</tr>
	<tr>
		<td>Mutadone</td><td>Лечит генетические мутации</td><td>1 Unstable Mutagen, 1 Acetone, 1 Bromine</td><td>Нет</td><td>Нет</td><td>Gene</td>
	</tr>
	<tr>
		<td>
		Редкоприменяемая медицина:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td><td>Передоз.</td><td>Завис.</td><td>Тип</td></tr>
	<tr>
		<td>Potassium Iodide</td><td>Снижает рад. урон</td><td>1 Potassium, 1 Iodine</td><td>Нет</td><td>Нет</td><td>Rad</td>
	</tr>
	<tr>
		<td>Ephedrine</td><td>Уменьшает время оглушения, увеличивает скорость бега, стабилизирует в критической ситуации</td><td>1 Diethylamine, 1 Sugar, 1 Oil, 1 Hydrogen</td><td>45</td><td>30</td><td>Stun</td>
	</tr>
	<tr>
		<td>Diphenhydramine</td><td>Выводит Histamine из крови, вызывает сонное состояние</td><td>1 Oil, 1 Carbon, 1 Bromine, Diethylamine, 1 Ethanol</td><td>Нет</td><td>Нет</td><td>Hist.</td>
	</tr>
	<tr>
		<td>Morphine</td><td>Снотворное</td><td>Карго, Ботаника, NanoMed Plus</td><td>30</td><td>25</td><td>Нет</td>
	</tr>
	<tr>
		<td>Oculine</td><td>Лечит глазной урон</td><td>1 Charcoal, 1 Carbon, 1 Hydrogen</td><td>Нет</td><td>Нет</td><td>Eye</td>
	</tr>
	<tr>
		<td>Inacusiate</td><td>Лечит ушной урон</td><td>1 Charcoal, 1 Carbon, 1 Water</td><td>Нет</td><td>Нет</td><td>Ear</td>
	</tr>
	<tr>
		<td>Epinephrine</td><td>Имеет 20% шанс уменьшить время оглушения, немного повышает выносливость. Не дает получить больше 35 кислородного урона. Если пациент в критическом состоянии, медленно лечит весь урон.</td><td>1 Phenol, 1 Acetone, 1 Diethylamine, 1 Oxygen, 1 Chlorine, 1 Hydrogen</td><td>30</td><td>Нет</td><td>Stun, Brute, Burn, Oxyg, Toxin</td>
	</tr>
	<tr>
		<td>Antihol</td><td>Выводит алкоголь из крови</td><td>1 Ethanol, 1 Charcoal, 1 Copper</td><td>Нет</td><td>Нет</td><td>Alco</td>
	</tr>
	<tr>
		<td>Stimulants</td><td>Увеличивает скорость бега, уменьшает время оглушения, немного лечит</td><td>Traitor Uplink, Stimpack</td><td>60</td><td>Нет</td><td>Stun</td>
	</tr>
	<tr>
		<td>Insulin</td><td>Жрет сахар</td><td>NanoMed Plus</td><td>Нет</td><td>Нет</td><td>Sugar</td>
	</tr>
	<tr>
		<td>Strange Reagent</td><td>Воскрешает мертвых. Если телу нанесено больше 100 физического или ожогового урона, то не сработает</td><td>1 Omnizine, 1 Holy Water, 1 Unstable Mutagen</td><td>Нет</td><td>Нет</td><td>Death</td>
	</tr>
	<tr>
		<td>Life</td><td>Создает зверушек</td><td>1 Strange Reagent, 1 Synthflesh, 1 Blood нагреть 375K</td><td>Нет</td><td>Нет</td><td>Life</td>
	</tr>
	<tr>
		<td>Synaptizine</td><td>Помогает бороться с наркотиками, снимает галлюцинации и уменьшает время оглушения</td><td>1 Sugar, 1 Lithium, 1 Water</td><td>Нет</td><td>Нет</td><td>Halluc</td>
	</tr>
	<tr>
		<td>Rezadone</td><td>Мгновенно лечит весь генетический урон</td><td>1 Carpotoxin, 1 Cryptobiolin, 1 Copper</td><td>30</td><td>Нет</td><td>Clone</td>
	</tr>
	<tr>
		<td>Spaceacillin</td><td>Помогает при борьбе с инфекциями</td><td>1 Epinephrine, 1 Cryptobiolin</td><td>Нет</td><td>Нет</td><td>Infec</td>
	</tr>
	<tr>
		<td>Miner's Salve</td><td>Лечит, но не дает понять насколько здоров пациент. Наружное применение</td><td>1 Iron, 1 Oil, 1 Water</td><td>Нет</td><td>Нет</td><td>All</td>
	</tr>
	<tr>
		<td>Haloperidol</td><td>Выводит наркотики из крови и избавляет от последствий. Усыпляет и дает урон выносливости</td><td>1 Chlorine, 1 Fluorine, 1 Aluminium, 1 Potassium Iodine, 1 Oil</td><td>Нет</td><td>Нет</td><td>Drug</td>
	</tr>
	<tr>
		<td>Leporazine</td><td>Держит температуру тела стабильной</td><td>1 Copper, 1 Silicon, 1 Plasma (катализатор)</td><td>Нет</td><td>Нет</td><td>Temp</td>
	</tr>
	<tr>
		<td>Corazone</td><td>Уменьшает урон от сердечных приступов</td><td>2 Phenol, 1 Lithium</td><td>Нет</td><td>Нет</td><td>Heart</td>
	</tr>
</table>
<table align="center" width="480">
	<tr>
		<td>
		Наркотики:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td><td>Передоз.</td><td>Завис.</td></tr>
	<tr>
		<td>Nicotine</td><td>Снижает время оглушения</td><td>Табак/Сигареты</td><td>Нет</td><td>30</td>
	</tr>
	<tr>
		<td>Krokodil</td><td>Если передоз, то наносит урон токсинами и урон мозгу. Если зависимый, то наносится физический урон и у пациента слезает кожа</td><td>1 Diphenhydramine, 1 Space Cleaner, 1 Potassium, 1 Morphine, 1 Phosphorus, 1 Welding Fuel нагреть 390K</td><td>20</td><td>15</td>
	</tr>
	<tr>
		<td>Crank</td><td>Снижает время оглушения на 200%</td><td>1 Diphenhydramine, 1 Ammonia, 1 Lithium, 1 Sulfuric Acid, 1 Welding Fuel нагреть 390K</td><td>20</td><td>10</td>
	</tr>
	<tr>
		<td>Methamphetamine</td><td>Снижает время оглушения на 300%, быстро восстанавливает выносливость и наносит небольшой урон мозгу</td><td>1 Ephedrine, 1 Iodine, 1 Phosphorus, 1 Hydrogen нагреть 374K</td><td>20</td><td>10</td>
	</tr>
	<tr>
		<td>Bath Salts</td><td>Дает неуязвимость к оглушению, наносит урон токсинами и урон мозгу, заставляет двигаться в случайном направлении и вызывает галлюцинации</td><td>1 Food Poisoning, 1 Saltpetre, 1 Nutriment, 1 Space Cleaner, 1 Enzyme, 1 Tea, 1 Mercury нагреть 374K</td><td>20</td><td>10</td>
	</tr>
	<tr>
		<td>Aranesp</td><td>Быстро восстанавливает выносливость, но наносит кислородный урон</td><td>1 Epinephrine, 1 Atropine, 1 Morphine</td><td>Нет</td><td>Нет</td>
	</tr>
	<tr>
		<td>Space Drugs</td><td>Sheeeeeeeeeeeet...</td><td>1 Lithium, 1 Mercury, 1 Sugar</td><td>30</td><td>Нет</td>
	</tr>
</table>
<table align="center" width="480">
	<tr>
		<td>
		Пиротехника:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Stabilizing Agent</td><td>При смешивании с пиротехникой стабилизирует её, что позволяет использовать позже</td><td>1 Iron, 1 Oxygen, 1 Hydrogen</td>
	</tr>
	<tr>
		<td>Foam Surfactant</td><td>Создаёт огромное количество пены при смешивании с водой</td><td>2 Carbon, 2 Fluorine, 1 Sulphuric Acid</td>
	</tr>
	<tr>
		<td>Smoke</td><td>Создаёт облако дыма</td><td>1 Phosphorus, 1 Potassium, 1 Sugar</td>
	</tr>
	<tr>
		<td>Flash Powder</td><td>Во время реакции сгорает, оставляя после себя яркую вспышку</td><td>1 Aluminium, 1 Potassium, 1 Sulphur</td>
	</tr>
	<tr>
		<td>Phlogiston</td><td>При смешивании создает огненный шар, который поджигает вас, если не был стабилизирован</td><td>1 Phosphorus, 1 Sulphuric Acid, 1 Stable Plasma</td>
	</tr>
	<tr>
		<td>Napalm</td><td>Вязкая субстанция, которая горит дольше, чем обычное топливо</td><td>1 Oil, 1 Welding Fuel, 1 Ethanol</td>
	</tr>
	<tr>
		<td>Sonic Powder</td><td>Во время реакции распространяет очень громкий звук</td><td>1 Oxygen, 1 Cola, 1 Phosphorus</td>
	</tr>
	<tr>
		<td>Pyrosium</td><td>Медленно нагревает все реактивы в чаше</td><td>1 Stable Plasma, 1 Radium, 1 Phosphorus</td>
	</tr>
	<tr>
		<td>Cryostylane</td><td>Медленно охлаждает все реактивы в чаше</td><td>1 Water, 1 Stable Plasma, 1 Nitrogen</td>
	</tr>
	<tr>
		<td>Chlorine Trifluoride</td><td>При температуре 1000 К создает, на некоторое время, большой огненный шар размером 3 на 3</td><td>1 Chlorine, 3 Fluorine нагреть 424K</td>
	</tr>
	<tr>
		<td>Sorium</td><td>Во время реакции отталкивает любой незакрепленный предмет</td><td>1 Mercury, 1 Oxygen, 1 Nitrogen, 1 Carbon</td>
	</tr>
	<tr>
		<td>Liquid Dark Matter</td><td>Во время детонации прилипает к любому движущемуся предмету или человеку</td><td>1 Stable Plasma, 1 Radium, 1 Carbon</td>
	</tr>
	<tr>
		<td>Black Powder</td><td>Порох</td><td>1 Saltpetre, 1 Charcoal, 1 Sulfur</td>
	</tr>
	<tr>
		<td>Nitroglycerin</td><td>Взрывается сразу же после смешивания</td><td>1 Glycerol, 1 Fluorosulfuric Acid, 1 Sulphuric Acid</td>
	</tr>
	<tr>
		<td>Explosion</td><td>Просто взрыв</td><td>1 Potassium, 1 Water</td>
	</tr>
	<tr>
		<td>Holy Explosion</td><td>Взрывается, парализует призраков и воспламеняет культистов</td><td>1 Potassium, 1 Holy Water</td>
	</tr>
	<tr>
		<td>EMP</td><td>Создает сильный электромагнитный импульс</td><td>1 Iron, 1 Uranium</td>
	</tr>
	<tr>
		<td>Tesla Shock</td><td>Реагирует сразу при смешивании. Снимает болты у шлюзов если они находятся в радиусе реакции, так же выводит из строя людей, электронику</td><td>1 Teslium, 1 Water/Teslium нагреть 474K</td>
	</tr>
	<tr>
		<td>Thermite</td><td>Реагент, который позволяет расплавлять стены при нагревании</td><td>1 Aluminium, 1 Iron, 1 Oxygen</td>
	</tr>
</table>
<table align="center" width="480">
	<tr>
		<td>
		Разное:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Barber's Aid</td><td></td><td>1 Carpet, 1 Radium, 1 Space Drugs</td>
	</tr>
	<tr>
		<td>Concentrated Barber's Aid</td><td></td><td>1 Barber's Aid, 1 Unstable Mutagen</td>
	</tr>
	<tr>
		<td>Candle</td><td></td><td>10 Liquid Gibs, 10 Oxygen нагреть 374K</td>
	</tr>
	<tr>
		<td>Carbon Dioxide</td><td></td><td>1 Carbon, 2 Oxygen нагреть до 777K</td>
	</tr>
	<tr>
		<td>Colorful Reagent</td><td></td><td>1 Stable Plasma, 1 Radium, 1 Space Drugs, 1 Cryoxadone, 1 Triple Citrus</td>
	</tr>
	<tr>
		<td>Condensed Capsaicin</td><td></td><td>1 Capsaicin Oil, 5 Ethanol</td>
	</tr>
	<tr>
		<td>Corgium</td><td></td><td>1 Nutriment, 1 Colorful Reagent, 1 Strange Reagent, 1 Blood</td>
	</tr>
	<tr>
		<td>Cryptobiolin</td><td></td><td>1 Oxygen, 1 Potassium, 1 Sugar</td>
	</tr>
	<tr>
		<td>Drying Agent</td><td></td><td>2 Stable Plasma, 1 Ethanol, 1 Sodium</td>
	</tr>
	<tr>
		<td>Foaming Agent</td><td></td><td>1 Lithium, 1 Hydrogen</td>
	</tr>
	<tr>
		<td>Fluorosulfuric Acid</td><td></td><td>1 Fluorine, 1 Hydrogen, 1 Potassium, 1 Sulphuric Acid нагреть 380K</td>
	</tr>
	<tr>
		<td>Glycerol</td><td></td><td>3 Corn Oil, 1 Sulphuric Acid</td>
	</tr>
	<tr>
		<td>Quantum Hair Dye</td><td></td><td>1 Colorful Reagent, 1 Radium, 1 Space Drugs</td>
	</tr>
	<tr>
		<td>Laughter</td><td></td><td>1 Sugar, 1 Banana Juice</td>
	</tr>
	<tr>
		<td>Meat Product</td><td></td><td>10 Liquid Gibs, 10 Nutriment, 10 Carbon</td>
	</tr>
	<tr>
		<td>Metal Foam</td><td></td><td>3 Iron/Aluminium, 1 Foaming Agent, 1 Fluorosulfuric Acid</td>
	</tr>
	<tr>
		<td>Nitrous Oxide</td><td></td><td>2 Ammonia, 1 Nitrogen, 2 Oxygen нагреть 525K</td>
	</tr>
	<tr>
		<td>Plasma Solidification</td><td></td><td>20 Plasma, 5 Iron, 5 Frost Oil</td>
	</tr>
	<tr>
		<td>Plastic Sheets</td><td></td><td>5 Oil, 2 Sodium Chloride, 3 Ash нагреть 374K</td>
	</tr>
	<tr>
		<td>Royal Bee Jelly</td><td></td><td>10 Unstable Mutagen, 40 Honey</td>
	</tr>
	<tr>
		<td>Soap</td><td></td><td>10 Lye, 10 Liquid Gibs нагреть 374K</td>
	</tr>
	<tr>
		<td>Sodium Chloride</td><td></td><td>1 Sodium, 1 Chlorine, 1 Water</td>
	</tr>
	<tr>
		<td>Space Cleaner</td><td></td><td>1 Ammonia, 1 Water</td>
	</tr>
	<tr>
		<td>Spray Tan</td><td></td><td>1 Orange Juice, 1 Oil/1 Corn Oil</td>
	</tr>
	<tr>
		<td>Space Lube</td><td></td><td>1 Oxygen, 1 Silicon, 1 Water</td>
	</tr>
	<tr>
		<td>Sterilizine</td><td></td><td>1 Charcoal, 1 Chlorine, 1 Ethanol</td>
	</tr>
	<tr>
		<td>Synthmeat</td><td></td><td>5 Blood, 1 Cryoxadone</td>
	</tr>
	<tr>
		<td>Unstable Mutagen</td><td></td><td>1 Chlorine, 1 Phosphorus, 1 Radium</td>
	</tr>
	<tr>
		<td>
		Вирусология:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Virus Food</td><td></td><td>5 Water, 5 Milk</td>
	</tr>
	<tr>
		<td>Virus Rations</td><td></td><td>1 Virus food, 1 Synaptizine</td>
	</tr>
	<tr>
		<td>Mutagenic Agar</td><td></td><td>1 Unstable Mutagen, 1 Virus food</td>
	</tr>
	<tr>
		<td>Sucrose Agar</td><td></td><td>1 Mutagenic agar, 1 Sugar</td>
	</tr>
	<tr>
		<td>Weakened Virus Plasma</td><td></td><td>1 Virus plasma, 1 Synaptizine</td>
	</tr>
	<tr>
		<td>Virus Plasma</td><td></td><td>1 Virus food, 1 Plasma</td>
	</tr>
	<tr>
		<td>Decaying Uranium Gel</td><td></td><td>1 Virus food, 1 Uranium</td>
	</tr>
	<tr>
		<td>Unstable Uranium Gel</td><td></td><td>1 Virus plasma, 5 Uranium</td>
	</tr>
	<tr>
		<td>Stable Uranium Gel</td><td></td><td>1 Plasma, 10 Uranium, 10 Silver/Gold</td>
	</tr>
	<tr>
		<td>
		Муттоксины:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Mutation Toxin</td><td></td><td>Используйте Plasma на green slime</td>
	</tr>
	<tr>
		<td>Unstable Mutation Toxin</td><td></td><td>Используйте Radium на green slime</td>
	</tr>
	<tr>
		<td>Stable Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Blood</td>
	</tr>
	<tr>
		<td>Lizard Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Radium</td>
	</tr>
	<tr>
		<td>Fly Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Unstable Mutagen</td>
	</tr>
	<tr>
		<td>Imperfect Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Slime Jelly</td>
	</tr>
	<tr>
		<td>Pod Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 EZ Nutrient</td>
	</tr>
	<tr>
		<td>Golem Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Silver</td>
	</tr>
	<tr>
		<td>Abductor Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Morphine</td>
	</tr>
	<tr>
		<td>Android Mutation Toxin</td><td></td><td>1 Unstable Mutation Toxin, 1 Teslium</td>
	</tr>
	<tr>
		<td>Advanced Mutation Toxin</td><td></td><td>Используйте Plasma на black slime</td>
	</tr>
	<tr>
		<td>Skeleton Mutation Toxin</td><td></td><td>1 Advanced Mutation Toxin, 1 Milk</td>
	</tr>
	<tr>
		<td>Zombie Mutation Toxin</td><td></td><td>1 Advanced Mutation Toxin, 1 Toxin</td>
	</tr>
	<tr>
		<td>Ash Mutation Toxin</td><td></td><td>1 Advanced Mutation Toxin, 1 Lizard Mutation Toxin, 1 Ash</td>
	</tr>
	<tr>
		<td>Shadow Mutation Toxin</td><td></td><td>1 Advanced Mutation Toxin, 1 Stabilized Liquid Dark Matter, 1 Holy Water</td>
	</tr>
	<tr>
		<td>Plasma Mutation Toxin</td><td></td><td>1 Skeleton Mutation Toxin, 1 Uranium, 1 Plasma</td>
	</tr>
	<tr>
		<td>
		Токсины:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Toxin</td><td></td><td>Medbay Vendors, Emagged Chem Dispenser</td>
	</tr>
	<tr>
		<td>Food Poisoning</td><td></td><td>Плохая еда</td>
	</tr>
	<tr>
		<td>Chloral Hydrate</td><td></td><td>3 Chlorine, 1 Ethanol, 1 Water</td>
	</tr>
	<tr>
		<td>Mindbreaker Toxin</td><td></td><td>1 Charcoal, 1 Hydrogen, 1 Silicon</td>
	</tr>
	<tr>
		<td>Impedrezene</td><td></td><td>1 Mercury, 1 Oxygen, 1 Sugar</td>
	</tr>
	<tr>
		<td>Mute Toxin</td><td></td><td>2 Uranium, 1 Water, 1 Carbon</td>
	</tr>
	<tr>
		<td>Mulligan Toxin</td><td></td><td>1 Stable Mutation Toxin, 1 Unstable Mutagen/Traitor Uplink</td>
	</tr>
	<tr>
		<td>Lexorin</td><td></td><td>1 Hydrogen, 1 Nitrogen, 1 Plasma</td>
	</tr>
	<tr>
		<td>Initropidril</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Tirizene</td><td></td><td>Traitor Sleepypen, Emagged Soda Dispenser</td>
	</tr>
	<tr>
		<td>Tiring Solution</td><td></td><td>Peacekeeper Cyborgs</td>
	</tr>
	<tr>
		<td>Polonium</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Pancuronium</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Sodium Thiopental</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Sulfonal</td><td></td><td>1 Acetone, 1 Diethylamine, 1 Sulfur</td>
	</tr>
	<tr>
		<td>Amanitin</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Lipolicide</td><td></td><td>1 Mercury, 1 Diethylamine, 1 Ephedrine</td>
	</tr>
	<tr>
		<td>Coniine</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Curare</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Histamine</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Formaldehyde</td><td></td><td>1 Ethanol, 1 Oxygen, 1 Silver нагреть 420K</td>
	</tr>
	<tr>
		<td>Venom</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Neurotoxin</td><td></td><td>1 Space Drugs нагреть 674K</td>
	</tr>
	<tr>
		<td>Cyanide</td><td></td><td>1 Oil, 1 Ammonia, 1 Oxygen нагреть 380K</td>
	</tr>
	<tr>
		<td>Carpotoxin</td><td></td><td>Space Carp, Koi Beans, Emagged Chem Dispenser</td>
	</tr>
	<tr>
		<td>Zombie Powder</td><td></td><td>5 Morphine, 5 Carpotoxin, 5 Copper</td>
	</tr>
	<tr>
		<td>Itching Powder</td><td></td><td>1 Fuel, 1 Ammonia, 1 Charcoal</td>
	</tr>
	<tr>
		<td>Mint Toxin</td><td></td><td>Размолоть mint на кухне</td>
	</tr>
	<tr>
		<td>Slime Jelly</td><td></td><td>Слаймы или слаймолюди</td>
	</tr>
	<tr>
		<td>Heparin</td><td></td><td>1 Formaldehyde, 1 Sodium, 1 Chlorine, 1 Lithium</td>
	</tr>
	<tr>
		<td>Teslium</td><td></td><td>1 Stable Plasma, 1 Silver, 1 Black Powder нагреть 400K</td>
	</tr>
	<tr>
		<td>Rotatium</td><td></td><td>1 Mindbreaker Toxin, 1 Teslium, 1 Neurotoxin</td>
	</tr>
	<tr>
		<td>Skewium</td><td></td><td>2 Rotatium, 2 Plasma, 1 Sulphuric Acid</td>
	</tr>
	<tr>
		<td>Spewium</td><td></td><td>Traitor Uplink</td>
	</tr>
	<tr>
		<td>Anacea</td><td></td><td>1 Haloperidol, 1 Impedrezene, 1 Radium</td>
	</tr>
	<tr>
		<td>Weed Killer</td><td></td><td>1 Toxin, 4 Ammonia</td>
	</tr>
	<tr>
		<td>Pest Killer</td><td></td><td>1 Toxin, 4 Ethanol</td>
	</tr>
	<tr>
		<td>Plant-B-Gone</td><td></td><td>1 Toxin, 1 Water</td>
	</tr>
	<tr>
		<td>
		Грибы:
		</td>
	</tr>
	<tr><td>Название</td><td>Описание</td><td>Рецепт</td></tr>
	<tr>
		<td>Entropic Polypnium</td><td>Яд</td><td></td>
	</tr>
	<tr>
		<td>Tinea Luxor</td><td>Заставляет употребившего светиться</td><td></td>
	</tr>
	<tr>
		<td>Vitrium Froth</td><td>80% шанс вылечить физический урон и ожоги</td><td>Добывается из кактуса</td>
	</tr>
</table>
</html>"}
		var/datum/browser/popup_chem = new(usr, sanitize_russian("Химия"), sanitize_russian("Химия"), 600, 800)
		popup_chem.set_content(sanitize_russian(dat_chem))
		popup_chem.open()
		// #CHEM End
	if(href == "wiki_heroes")
		var/dat_heroes = "<h1>Oh that Heroes!</h1><hr>"
		dat_heroes += {"<!DOCTYPE html>
		<html>
			<table align="center", border="2", width="500">
			<tr><td>Герой</td><td>Послужной список</td></tr>
			<tr><td>Joctopus</td><td>Запилил шаблон этой хуйни, заполнил этот список</td></tr>
			<tr><td>Valtosin</td><td>Заполнял эту вики. За ним стоит категория химии!</td></tr>
			</table>
		</html>"}
		var/datum/browser/popup_heroes = new(usr, "Герои этой Вики", "Герои этой Вики", 600, 800)
		popup_heroes.set_content(sanitize_russian(dat_heroes))
		popup_heroes.open()