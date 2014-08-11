drop database MUSIC_STORE

create database MUSIC_STORE
go
use MUSIC_STORE
go

/*== Genre ==*/

create table Genre
(
ID int identity(1,1) primary key,
Name nvarchar(50)
)

go

/*== Composer ==*/
create table Composer
(
ID int identity(1,1) primary key,
FullName nvarchar(50),
Information text
)

/*== Publisher ==*/
go

create table Publisher
(
ID int identity(1,1) primary key,
Name nvarchar(50),
Information text,
LinkImage nvarchar(50)
)

/*== Album ==*/
go

create table Album
(
ID int identity(1,1) primary key,
Name nvarchar(50),
Information text,
LinkImage nvarchar(50),
ReleaseDate date,
BuyCounter int,
IDGenre int,
IDPublisher int
)

ALTER TABLE Album
ADD CONSTRAINT fk_Album_Genre
FOREIGN KEY (IDGenre)
REFERENCES Genre(ID)

go

ALTER TABLE Album
ADD CONSTRAINT fk_Album_Publisher
FOREIGN KEY (IDPublisher)
REFERENCES Publisher(ID)

/*== Singer ==*/
go
create table Singer
(
ID int identity(1,1) primary key,
FullName nvarchar(50),
Information text,
LinkImage nvarchar(50)
)

/*== Song ==*/
go

create table Song
(
ID INT IDENTITY(1,1) PRIMARY KEY,
Name nvarchar(50),
Price int,
FileType char(3),
LinkSong nvarchar(50),
IDGenre int,
IDAlbum int,
IDSinger int,
IDComposer int
)
go

ALTER TABLE Song
ADD CONSTRAINT fk_Song_Album
FOREIGN KEY (IDAlbum)
REFERENCES Album(ID)

go

ALTER TABLE Song
ADD CONSTRAINT fk_Song_Singer
FOREIGN KEY (IDSinger)
REFERENCES Singer(ID)

go

ALTER TABLE Song
ADD CONSTRAINT fk_Song_Genre
FOREIGN KEY (IDGenre)
REFERENCES Genre(ID)

go

ALTER TABLE Song
ADD CONSTRAINT fk_Song_Composer
FOREIGN KEY (IDComposer)
REFERENCES Composer(ID)

go

/*== UserAccount ==*/
create table UserAccount
(
UserName nvarchar(50) primary key,
Facebook nvarchar(50)
)

go

/*== Cart ==*/
create table Cart
(
ID int identity(1,1) primary key,
UserName nvarchar(50),
BuyDate date
)
go

ALTER TABLE Cart
ADD CONSTRAINT fk_Cart_User
FOREIGN KEY (UserName)
REFERENCES UserAccount(UserName)

go


/*== Cart_Abbum ==*/
create table Cart_Abbum
(
IDCart int,
IDAlbum int,
CONSTRAINT pk_Cart_Album PRIMARY KEY (IDCart,IDAlbum)
)

go

ALTER TABLE Cart_Abbum
ADD CONSTRAINT fk_CartAbbum_Album
FOREIGN KEY (IDAlbum)
REFERENCES Album(ID)

/*== WishList ==*/
go

create table WishList
(
UserName nvarchar(50),
IDAlbum int,
CONSTRAINT pk_WishList PRIMARY KEY (UserName,IDAlbum)
)

go

ALTER TABLE WishList
ADD CONSTRAINT fk_WishList_User
FOREIGN KEY (UserName)
REFERENCES UserAccount(UserName)

go

ALTER TABLE WishList
ADD CONSTRAINT fk_WishList_Album
FOREIGN KEY (IDAlbum)
REFERENCES Album(ID)

