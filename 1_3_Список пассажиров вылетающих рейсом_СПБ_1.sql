SELECT
	ѕас.‘»ќ,
	ѕас.ѕаспорт,
	Ѕилеты.–ейс,
	–ейсы.¬рем¤_отправлени¤ AS ќтправление,
	Ѕилеты.ƒата_вылета,
	Ѕилеты.Ќомер_билета AS [є билета],
	Ѕилеты.ћесто,
	–ейсы.ѕункт_назначени¤,
	–ейсы.÷ена_билета AS [÷ена,руб],
	—амолеты.“ип_самолета



FROM
	ѕассажиры ѕас
		INNER JOIN Ѕилеты ON ѕас.ѕассажир_id = Ѕилеты.ѕассажир_id
		INNER JOIN –ейсы ON Ѕилеты.–ейс = –ейсы.–ейс
		INNER JOIN —амолеты ON –ейсы. од_самолета = —амолеты. од_самолета


WHERE
	Ѕилеты.–ейс = '—ѕЅ-1'


ORDER BY
	Ѕилеты.ƒата_вылета, Ѕилеты.ћесто



