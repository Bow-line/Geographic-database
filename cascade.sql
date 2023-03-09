
DELETE FROM Naukowiec WHERE ID_Karty<4;

UPDATE Rzeka SET Długość=520 WHERE Długość=416;


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

drop table Dana_statystyczna
drop table Rzeka_a_państwo
drop table Morze_a_państwo
drop table Rzeka
drop table Morze
drop table Państwo
drop table Współrzędne
drop table Naukowiec
drop table Lokalizacja
drop table Dane_o_powstaniu