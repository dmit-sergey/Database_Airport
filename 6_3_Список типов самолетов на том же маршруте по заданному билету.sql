SELECT
	 Ѕилеты.Ќомер_билета AS [¬ыбран билет],
	 –с.ѕункт_назначени¤,
	 –с.–ейс,
	 –с.¬рем¤_отправлени¤,
	 —м.“ип_самолета,
	 –ейсы.–ейс AS [јналогичные рейсы],
	 –ейсы.¬рем¤_отправлени¤,
	 —амолеты.“ип_самолета AS [“ипы самолетов]


FROM
	Ѕилеты
		INNER JOIN –ейсы –с ON Ѕилеты.–ейс = –с.–ейс
		INNER JOIN —амолеты —м ON –с. од_самолета = —м. од_самолета
		INNER JOIN –ейсы ON –с.ѕункт_назначени¤ = –ейсы.ѕункт_назначени¤
		INNER JOIN —амолеты ON –ейсы. од_самолета = —амолеты. од_—амолета

WHERE
	Ѕилеты.Ќомер_билета = 'Ѕ-81' AND –с.–ейс != –ейсы.–ейс
