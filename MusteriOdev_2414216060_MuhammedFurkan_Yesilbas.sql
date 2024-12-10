create database MusteriOdev
use MusteriOdev

create table Musteri
(
	musteriID int identity (1,1) not null primary key,
	musteriAdi varchar (15) not null,
	musteriTelefon varchar (20) not null
)

create table Urun
(
	urunID int identity (1,2) not null primary key,
	urunAdi varchar (15) not null,
	urunFiyat varchar (20) not null,
	urunMiktar varchar (5) not null,
	tedarikciID int not null foreign key references Tedarik (TedarikciID)
)
create table Tedarik
(
	TedarikciID int identity (1,3) not null primary key,
	TedarikciAdi varchar (6) not null,
	TedarikciTel varchar (11) not null,
	TedarikciMail varchar (9) not null
)
create table SatinAlma
(
	SatisID int identity (1,4) not null primary key,
	OdemeDurum varchar (2) not null,
	SatinAlmaTarih datetime not null,
	UrunID int not null foreign key references Urun (urunID),
	Adet varchar (10) not null,
	SatisFiyat varchar (100) not null,
	MusteriID int not null foreign key references Musteri (musteriID)
)