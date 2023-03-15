create database Course 

use Course 

create table Teachers(
	[Id] int primary key identity(1,1),
	[Name] nvarchar(50) not null,
	[Surname] nvarchar(50),
	[Email] nvarchar(150) unique,
	[Age] int check(Age>20),
	[Salary] decimal
)

--primary key  --- hem uniq hem not null oomasi demekdir. idleri teytin edirik
--identity - idnin deyerinin ardicilligini teyin edir. yeni neche neche artsin
--noy null yeni bow qoymaq olmaq o datani
--unique - istediyimiz columa yazib ichindeki datalari unik ede bilerik. yeni tekrar o data yazilmasi
--check - yashin verdiyimiz wertden awagi olmamasini yoxlayir


select * from Teachers



insert into Teachers([Name],[Surname],[Email],[Age],[Salary])
values	('Cavid','Bashirov','javid@code.edu.az','29',5000),
		('Ulker','Askerova','ulker@code.edu.az','38',2000),
		('Shahriyar','Memmedov','shahriyar@code.edu.az','27',1000),
		('Fuad','Iskenderov','fuad@code.edu.az','35',3000),
		('Ulvi','Macidov','ulvi@code.edu.az','27',2000),
		('Leman','Abbasova','leman@code.edu.az','25',1500);
		

--UPDATE Teachers
--SET [Email] = 'leman@mail.ru'
--WHERE [Id] = 6;
--data update

 --Task1--
 --1) Yashi butun muellimlerin orta yashindan boyuk olan muellimlerin siyahisi.

 select  AVG(Age) as 'Age average' from Teachers
 --butun muellimlerin orta yashi

 select * from Teachers where [Age] > (select AVG(Age) from Teachers)
 --muellimlerin orta yashinda boyuk yashda olan muellim


 --2) Maashi 1000  ve 3000 araliqinda olan muellimlerin siyahisi.
 select * from Teachers where [Salary] between 1000 and 3000 and [Salary] not in(1000,3000)


 --3) Emailin sonu mail.ru olan muellimlerin adi ve soyadi

  select * from Teachers where [Email] like '%mail.ru'



 --  Adi C herfi ile bashlayan muellimlerin siyahisi.

  select * from Teachers where [Name] like 'C%'















