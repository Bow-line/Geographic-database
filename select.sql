USE Projekt
-- 1. Utwórz widok zawierający: Nazwe państwa, jego gęstość zaludnienia, przepływające przez nie rzeki, morza z którymi graniczy,
-- data ostatniej jego aktualizacji i ID karty naukowca który był za to odpowiedzialny
GO
CREATE VIEW informacje_państwo
	(Nazwa_państwa, Gęstość_zaludnienia, Przepływająca_rzeka, Graniczace_morze, Data_aktualizacji,Naukowiec_odpowiedzialny)
	AS SELECT Państwo.Nazwa_panstwa, Państwo.Gestość_zaludnienia, Rzeka.Nazwa_rzeki, Morze.Nazwa_morza, Dana_statystyczna.Data_danej, Naukowiec.ID_Karty
	FROM Państwo, Rzeka, Morze, Dana_statystyczna, Naukowiec, Rzeka_a_państwo, Morze_a_państwo
	WHERE Rzeka_a_państwo.Nazwa_panstwa = Państwo.Nazwa_panstwa
	AND Rzeka_a_państwo.Nazwa_rzeki = Rzeka.Nazwa_rzeki
	AND Morze_a_państwo.Nazwa_morza = Morze.Nazwa_morza
	AND Morze_a_państwo.Nazwa_panstwa = Państwo.Nazwa_panstwa
	AND Dana_statystyczna.Nazwa_panstwa = Państwo.Nazwa_panstwa
	AND Dana_statystyczna.ID_karty = Naukowiec.ID_Karty
GO
SELECT * FROM informacje_państwo
DROP VIEW informacje_państwo


-- 2. Sporządz listę Rzek o długości powyżej 1000 km uporządkowaną według nich ronąco, które jednocześnie wpływają do Mórz które są śródlądowe 
SELECT Morze.Nazwa_morza, Rzeka.Nazwa_rzeki,Rzeka.Długość,Rzeka.Głębokość 
	FROM Morze JOIN Rzeka ON Morze.Nazwa_morza = Rzeka.Nazwa_morza
	WHERE Morze.Typ_morza = 'Śródlądowe' AND Rzeka.Długość >1000
ORDER BY Morze.Nazwa_morza ASC


-- 3. Podaj wszytskie morza których głębokość jest większa niż średnia głębokość mórz w bazie oraz takich do kótrych wpływają rzeki o długości min 500 km
SELECT Morze.Nazwa_morza,Rzeka.Nazwa_rzeki, Morze.Głębokość
	FROM Morze, Rzeka
	WHERE Rzeka.Nazwa_morza = Morze.Nazwa_morza AND Morze.Głębokość > (
	SELECT AVG(Morze.Głębokość) FROM Morze)

-- 4. Wypisz ilość pomiarów jaki wykonał dany naukowiec sortując je i grupujac wedłg od najbardziej aktywnego pracownika do najmniej
SELECT Naukowiec.ID_Karty, COUNT(Dana_statystyczna.ID_danej) AS 'ilosc pomiarów'
	FROM Naukowiec JOIN Dana_statystyczna
	ON Naukowiec.ID_Karty = Dana_statystyczna.ID_karty
	GROUP BY Naukowiec.ID_Karty
	ORDER BY COUNT(Dana_statystyczna.ID_danej) DESC

-- 5. Wypisz srednią głębokośc dla rzek o konkretnym typie ujścia do morza
SELECT AVG(Rzeka.Głębokość) AS Średnia_głębokość , Rzeka.Typ_rzeki
	FROM Rzeka 
	GROUP BY Rzeka.Typ_rzeki

-- 6. Wypisz wszytkie aktualizacje dla mórz i państw, które nastąpiły po roku 1999, oraz kto był za nie odpowiedzialny, 
-- zadbaj jednocześnie o to by nie wyświetlały sie aktualizacje niepełne, znaczy się takie bez informacji o rzekach
SELECT Dana_statystyczna.Data_danej, Dana_statystyczna.Godzina_danej, Dana_statystyczna.Nazwa_panstwa,
	Dana_statystyczna.Nazwa_morza, Naukowiec.Imie, Naukowiec.Nazwisko
	FROM Dana_statystyczna INNER JOIN Naukowiec 
		ON Dana_statystyczna.ID_karty = Naukowiec.ID_Karty
	WHERE Dana_statystyczna.Nazwa_rzeki NOT LIKE 'Brak' and Dana_statystyczna.Data_danej> '2000-01-01'


-- 7. Wypisz 3 najmłodszych pracowników instytutu (najwiekszy numer karty ID), wszystkie pomiary krórymi się zajmowali, 
-- dokładne dane o mierzonych miejscach i uporządkuj ich od najmłodszego pracownika
SELECT Naukowiec.Nazwisko, Naukowiec.Imie,Naukowiec.ID_Karty,
		Dana_statystyczna.Data_danej, Dana_statystyczna.Godzina_danej, Dana_statystyczna.Nazwa_morza, 
		Morze.Głębokość,Morze.Typ_morza,
		Dana_statystyczna.Nazwa_rzeki,
		Rzeka.Długość,Dana_statystyczna.Nazwa_morza_od_rzeki,Rzeka.Typ_rzeki,
		Dana_statystyczna.Nazwa_panstwa,
		Państwo.Gestość_zaludnienia,Państwo.Uksztaltowanie_terenu 
	FROM Naukowiec,Dana_statystyczna,Morze,Rzeka,Państwo
	WHERE Naukowiec.ID_Karty = Dana_statystyczna.ID_karty
		AND Morze.Nazwa_morza = Dana_statystyczna.Nazwa_morza
		AND Rzeka.Nazwa_rzeki = Dana_statystyczna.Nazwa_rzeki
		AND Rzeka.Nazwa_morza = Dana_statystyczna.Nazwa_morza_od_rzeki
		AND Państwo.Nazwa_panstwa = Dana_statystyczna.Nazwa_panstwa
		AND Naukowiec.ID_Karty > 7
	ORDER BY Naukowiec.ID_Karty DESC

-- 8. Ilośc miejsc rzek i/lub mórz dla danego państwa
SELECT Nazwa_panstwa, COUNT(Nazwa_panstwa) AS Ilosć_wody FROM
	(
		SELECT Nazwa_panstwa
		FROM Morze_a_państwo
		UNION ALL
		SELECT Nazwa_panstwa
		FROM Rzeka_a_państwo
	) temp
	GROUP BY Nazwa_panstwa
	ORDER BY Ilosć_wody