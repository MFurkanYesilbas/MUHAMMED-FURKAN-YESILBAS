--create database Sirket
use Sirket

create table Sirket
(
	SirketID int identity (11) not null primary key,
	SirketAdi varchar (15) not null,
	SirketTelefon varchar (11) not null,
	SirketMail varchar (20) not null
)
create table Calisan
(
	CalisanID int identity (11) not null primary key,
	CalisanAdi varchar (8) not null,
	CalisanPozisyonu varchar (10) not null,
	CalisanTelefonu varchar (11) not null,
	CalisanMail varchar (10) not null
)
create table Proje
(
ProjeID int identity (11) not null primary key,
ProjeAdi varchar(15) not null,
ProjeBasTarih datetime not null,
ProjeBitsTarih datetime not null,
ProjeButce varchar(200) not null,
CalisanID int not null foreign key references Calisan (CalisanID),
SirketID int not null foreign key references Sirket (SirketID)
)