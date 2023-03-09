INSERT INTO Państwo VALUES (0,'Brak','Brak');
INSERT INTO Morze VALUES ('Brak','Brak',0)
INSERT INTO Rzeka VALUES ('Brak',0,'Brak',0, 'Brak');


INSERT INTO Państwo VALUES (124,'Polska','Nizinne');
    INSERT INTO Współrzędne VALUES('21°00′42″E','52°13′47″N');
    INSERT INTO Lokalizacja VALUES ('Europa','Umiarkowany ciepły przejściowy',312679);
    INSERT INTO Morze VALUES ('Bałtyckie','Śródlądowe',459);
        INSERT INTO Morze_a_państwo VALUES('Bałtyckie','Polska');
    INSERT INTO Dane_o_powstaniu VALUES ('ok. 12 tys lat temu','wody topniejącego lodowca');
        INSERT INTO Rzeka VALUES ('Wisła',1047,'deltowe',15, 'Bałtyckie');
            INSERT INTO Dane_o_powstaniu VALUES (NULL,NULL);
            INSERT INTO Rzeka_a_państwo VALUES('Wisła','Bałtyckie','Polska');
				INSERT INTO Naukowiec VALUES ('Anna','Jabłońska');
                INSERT INTO Dana_statystyczna VALUES('1999-5-15','11:54',IDENT_CURRENT('Naukowiec'),'Wisła','Bałtyckie','Bałtyckie','Polska');


INSERT INTO Państwo VALUES (105,'Austria','Górskie');
	INSERT INTO Naukowiec VALUES ('Tadeusz','Kowalski-Jankowski');
	INSERT INTO Dana_statystyczna VALUES('2003-11-20','16:18',IDENT_CURRENT('Naukowiec'),'Brak','Brak','Brak','Austria');
    INSERT INTO Współrzędne VALUES('16°22′19″E','48°12′30″N');
    INSERT INTO Dane_o_powstaniu VALUES ('27 lipca 1955','koniec II wojny światowej');
    INSERT INTO Lokalizacja VALUES ('Europa','Umiarkowany',83879);
    INSERT INTO Morze VALUES ('Czarne','Śródlądowe',2212);
    INSERT INTO Dane_o_powstaniu VALUES ('ok. 5600 p.n.e.','pozostałość po wielkim Morzu Sarmackim');
         INSERT INTO Rzeka VALUES ('Dunaj',2850,'deltowe', NULL, 'Czarne');
            INSERT INTO Rzeka_a_państwo VALUES('Dunaj','Czarne','Austria');
                

INSERT INTO Państwo VALUES (232,'Niemcy', NULL);
    INSERT INTO Współrzędne VALUES('13°24′37″E','52°31′27″N');
    INSERT INTO Lokalizacja VALUES ('Europa','Umiarkowany ciepły',357386);
    INSERT INTO Morze VALUES ('Północne','Szelfowe',809);
        INSERT INTO Morze_a_państwo VALUES('Północne','Niemcy');
        INSERT INTO Rzeka VALUES ('Ren',1233,'Lejkowate',26, 'Północne'); 
            INSERT INTO Rzeka_a_państwo VALUES('Ren','Północne','Niemcy');
				INSERT INTO Naukowiec VALUES ('Agnieszka','Figowska');
                INSERT INTO Dana_statystyczna VALUES('1999-9-19','13:15',IDENT_CURRENT('Naukowiec'),'Brak','Brak','Północne','Brak');
            
INSERT INTO Państwo VALUES (134,'Czechy','Wyżynne');
    INSERT INTO Współrzędne VALUES('14°25′14″E','50°05′16″N');
    INSERT INTO Dane_o_powstaniu VALUES ('1 stycznia 1993','odłączenie się od Słowacji');
    INSERT INTO Lokalizacja VALUES ('Europa','Umiarkowany ciepły',78871);
    INSERT INTO Rzeka VALUES ('Łaba',1165,'Lejkowate',11, 'Północne');
        INSERT INTO Rzeka_a_państwo VALUES('Łaba','Północne','Czechy');
			INSERT INTO Naukowiec VALUES ('Jakub','Ejsmont');
            INSERT INTO Dana_statystyczna VALUES('2001-12-7','23:18',IDENT_CURRENT('Naukowiec'),'Brak','Brak','Brak','Czechy');

INSERT INTO Państwo VALUES (111,'Francja','Różne');
    INSERT INTO Współrzędne VALUES('2°20′55″E','48°51′12″N');
    INSERT INTO Morze_a_państwo VALUES('Północne','Francja');
    INSERT INTO Lokalizacja VALUES ('Europa','Umiarkowany ciepły morski',543940);
	INSERT INTO Rzeka VALUES ('Aa',82,NULL, NULL,'Północne');
    INSERT INTO Rzeka_a_państwo VALUES('Aa','Północne','Francja');
    INSERT INTO Morze VALUES ('Śródziemne','Śródlądowe',2132);
        INSERT INTO Morze_a_państwo VALUES('Śródziemne','Francja');
			INSERT INTO Naukowiec VALUES ('Wiktoria','Rychert');
            INSERT INTO Dana_statystyczna VALUES('2009-11-18','14:58',IDENT_CURRENT('Naukowiec'),'Aa','Północne','Północne','Francja');

INSERT INTO Państwo VALUES (91,'Hiszpania','Wyżynne');
	INSERT INTO Naukowiec VALUES ('Aleksandra','Morewicz');
	INSERT INTO Dana_statystyczna VALUES('2011-1-23','12:16', IDENT_CURRENT('Naukowiec'),'Brak','Brak', 'Brak','Hiszpania');
    INSERT INTO Współrzędne VALUES('3°42′09″W','40°24′59″N');
    INSERT INTO Lokalizacja VALUES ('Europa','Śródziemnomorski kontynentalny i morski',505990);
    INSERT INTO Morze_a_państwo VALUES('Śródziemne','Hiszpania');
    INSERT INTO Dane_o_powstaniu VALUES ('ok. 5 mln lat temu','katastroficzna powódź');
        INSERT INTO Rzeka VALUES ('Ebro',930,'Deltowe',62, 'Śródziemne');
            INSERT INTO Rzeka_a_państwo VALUES('Ebro','Śródziemne','Hiszpania');


INSERT INTO Państwo VALUES (8,'Rosja','Różne');
    INSERT INTO Współrzędne VALUES('37°36′56″E','55°45′07″N');
    INSERT INTO Dane_o_powstaniu VALUES ('25 grudnia 1991','upadek ZSRR');
    INSERT INTO Lokalizacja VALUES ('Europa/Azja','Kontynentalny umiarkowany i podbiegunowy/Monsunowy/Podzwrotnikowy śródziemnomorski',17130000);
    INSERT INTO Morze VALUES ('Kaspijskie','Śródlądowe',1025);
        INSERT INTO Morze_a_państwo VALUES('Kaspijskie','Rosja');
        INSERT INTO Rzeka VALUES ('Wolga',3530,'lejkowate',23,'Kaspijskie');
            INSERT INTO Rzeka_a_państwo VALUES('Wolga','Kaspijskie','Rosja');
			INSERT INTO Naukowiec VALUES ('Bolesław','Zientarski');
            INSERT INTO Dana_statystyczna VALUES('2019-11-12','15:33',IDENT_CURRENT('Naukowiec'),'Wolga','Kaspijskie','Brak', 'Brak');
    INSERT INTO Morze VALUES ('Biale','Śródlądowe',350);
        INSERT INTO Morze_a_państwo VALUES('Biale','Rosja');
        INSERT INTO Rzeka VALUES ('Onega',416,'Lejkowate', NULL, 'Biale');
            INSERT INTO Rzeka_a_państwo VALUES('Onega','Biale','Rosja');

INSERT INTO Państwo VALUES (200,'Włochy', NULL);
    INSERT INTO Współrzędne VALUES('12°30′40″E','41°53′30″N');
    INSERT INTO Dane_o_powstaniu VALUES ('2 czerwca 1946','zakończenie II wojny światowej');
    INSERT INTO Lokalizacja VALUES ('Europa','Podzwrotnikowy morski',301340);
    INSERT INTO Morze VALUES ('Adriatyckie','Śródlądowe',1233);
        INSERT INTO Morze_a_państwo VALUES('Adriatyckie','Włochy');
        INSERT INTO Rzeka VALUES ('Pad',652,'Deltowe', NULL,'Adriatyckie');
            INSERT INTO Rzeka_a_państwo VALUES('Pad','Adriatyckie','Włochy');
				INSERT INTO Naukowiec VALUES ('Justyna','Borewicz-Blok');
                INSERT INTO Dana_statystyczna VALUES('2020-4-3','4:19',IDENT_CURRENT('Naukowiec'),'Pad','Adriatyckie','Adriatyckie','Włochy');

INSERT INTO Państwo VALUES (144,'Chiny', 'Wyżynne-Górskie');
    INSERT INTO Współrzędne VALUES('116°23′50″E','39°54′26″N');
    INSERT INTO Dane_o_powstaniu VALUES ('1 października 1949',NULL);
    INSERT INTO Lokalizacja VALUES ('Azja','Umiarkowany/Tropikalny',9597000);
    INSERT INTO Morze VALUES ('Arabskie', NULL,4652);
        INSERT INTO Rzeka VALUES ('Indus',3180, NULL, NULL, 'Arabskie');
            INSERT INTO Rzeka_a_państwo VALUES('Indus','Arabskie','Chiny');
      INSERT INTO Morze VALUES ('Wschodniochińskie', 'Przybrzeżne',2700);
        INSERT INTO Morze_a_państwo VALUES('Wschodniochińskie','Chiny');
			INSERT INTO Naukowiec VALUES ('Piotr', 'Tracz');
            INSERT INTO Dana_statystyczna VALUES('2021-12-20','7:24',IDENT_CURRENT('Naukowiec'),'Brak','Brak','Arabskie','Brak');

INSERT INTO Państwo VALUES (81,'Grecja', 'Górskie');
	INSERT INTO Naukowiec VALUES ('Kazimierz','Swarzowski');
    INSERT INTO Dana_statystyczna VALUES('2011-11-11','11:11',IDENT_CURRENT('Naukowiec'),'Brak','Brak','Brak','Grecja');   
    INSERT INTO Współrzędne VALUES('23°42′58″E','37°58′46″N');
    INSERT INTO Dane_o_powstaniu VALUES ('25 marca 1821',NULL);
    INSERT INTO Lokalizacja VALUES ('Europa','Podzwrotnikowy śródziemnomorski',131957);
    INSERT INTO Morze VALUES ('Egejskie','Śródlądowe',2529);
        INSERT INTO Morze_a_państwo VALUES('Egejskie','Grecja');
        INSERT INTO Rzeka VALUES ('Wardar',388, NULL, NULL, 'Egejskie');
            INSERT INTO Rzeka_a_państwo VALUES('Wardar','Egejskie','Grecja');


SELECT* FROM Naukowiec
SELECT* FROM Morze
SELECT* FROM Rzeka
SELECT* FROM Państwo
SELECT* FROM Morze_a_państwo
SELECT* FROM Rzeka_a_państwo
SELECT* FROM Dane_o_powstaniu
SELECT* FROM Lokalizacja
SELECT* FROM Dana_statystyczna
SELECT* FROM Współrzędne