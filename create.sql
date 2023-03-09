CREATE TABLE Państwo (
    Gestość_zaludnienia INT DEFAULT 0 NOT NULL,
    Nazwa_panstwa VARCHAR (100) CHECK(LEN(Nazwa_panstwa)>0) PRIMARY KEY NOT NULL,
    Uksztaltowanie_terenu VARCHAR (100),
	CONSTRAINT poprawna_wartosc_Panstwo CHECK (Gestość_zaludnienia>=0)
);

CREATE TABLE Morze (
    Nazwa_morza VARCHAR (100) CHECK(LEN(Nazwa_morza)>0) PRIMARY KEY NOT NULL,
    Typ_morza VARCHAR (100),
    Głębokość FLOAT DEFAULT 0,
	CONSTRAINT poprawna_wartosc_Morze CHECK (Głębokość>=0)
);

CREATE TABLE Rzeka (
    Nazwa_rzeki VARCHAR (100) CHECK(LEN(Nazwa_rzeki)>0) NOT NULL,
    Długość FLOAT DEFAULT 0,
    Typ_rzeki VARCHAR (100),
    Głębokość FLOAT  DEFAULT 0,
    Nazwa_morza VARCHAR (100) CHECK(LEN(Nazwa_morza)>0) REFERENCES Morze NOT NULL,
    PRIMARY KEY (Nazwa_rzeki, Nazwa_morza),
	CONSTRAINT poprawna_wartosc_Rzeka CHECK (Głębokość>=0),
	CONSTRAINT poprawna_wartosc_Rzeka_2 CHECK (Długość>=0)

);

CREATE TABLE Lokalizacja (
    Kontynent_wystepowania VARCHAR (100) NOT NULL,
    Klimat_miejsca VARCHAR (100) NOT NULL,
    Powierzchnia FLOAT DEFAULT 0,
    ID_lokalizacji INT IDENTITY(1,1) PRIMARY KEY,
	CONSTRAINT poprawna_wartosc_Lokalizacja CHECK (Powierzchnia>=0)
);

CREATE TABLE Dane_o_powstaniu (
    Rok_powstania VARCHAR (100),
    Powod_powstania VARCHAR (100),
    ID_Powstania INT IDENTITY(1,1) PRIMARY KEY NOT NULL
);

CREATE TABLE Rzeka_a_państwo (
    Nazwa_rzeki VARCHAR (100) CHECK(LEN(Nazwa_rzeki)>0) NOT NULL,
	Nazwa_morza VARCHAR (100)CHECK(LEN(Nazwa_morza)>0) NOT NULL,
    Nazwa_panstwa VARCHAR (100) CHECK(LEN(Nazwa_panstwa)>0) REFERENCES Państwo ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    FOREIGN KEY(Nazwa_rzeki,Nazwa_morza) REFERENCES Rzeka(Nazwa_rzeki,Nazwa_morza),
	PRIMARY KEY ([Nazwa_rzeki], [Nazwa_morza], [Nazwa_panstwa])
);

CREATE TABLE Morze_a_państwo (
    Nazwa_morza VARCHAR (100) CHECK(LEN(Nazwa_morza)>0) REFERENCES Morze ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    Nazwa_panstwa VARCHAR (100) CHECK(LEN(Nazwa_panstwa)>0) REFERENCES Państwo ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    PRIMARY KEY(Nazwa_morza, Nazwa_panstwa)
);

CREATE TABLE Naukowiec (
    Imie VARCHAR (100) CHECK(LEN(Imie)>0) NOT NULL,
    Nazwisko VARCHAR (100) CHECK(LEN(Nazwisko)>0) NOT NULL,
    ID_Karty INT IDENTITY(1,1) PRIMARY KEY NOT NULL ,
);

CREATE TABLE Współrzędne (
    Wspolrzedna_x VARCHAR(100) NOT NULL,
    Wspolrzedna_y VARCHAR(100) NOT NULL,
    ID_wspolrzednych INT IDENTITY(1,1) PRIMARY KEY NOT NULL,
);

CREATE TABLE Dana_statystyczna (
    Data_danej DATE NOT NULL,
    Godzina_danej TIME NOT NULL,
    ID_danej INT IDENTITY(1,1) NOT NULL,
    ID_karty INT REFERENCES Naukowiec ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
    Nazwa_rzeki VARCHAR (100)CHECK(LEN(Nazwa_rzeki)>0) NOT NULL,
	Nazwa_morza_od_rzeki VARCHAR (100) CHECK(LEN(Nazwa_morza_od_rzeki)>0) NOT NULL,
    Nazwa_morza VARCHAR (100) CHECK(LEN(Nazwa_morza)>0) REFERENCES Morze ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,	
    Nazwa_panstwa VARCHAR (100) CHECK(LEN(Nazwa_panstwa)>0) REFERENCES Państwo ON DELETE CASCADE ON UPDATE CASCADE NOT NULL,
	FOREIGN KEY (Nazwa_rzeki,Nazwa_morza_od_rzeki) REFERENCES Rzeka(Nazwa_rzeki,Nazwa_morza) ON DELETE CASCADE ON UPDATE CASCADE ,
    PRIMARY KEY(ID_danej, ID_karty,[Nazwa_rzeki],[Nazwa_morza_od_rzeki], [Nazwa_morza], [Nazwa_panstwa]),	
);



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