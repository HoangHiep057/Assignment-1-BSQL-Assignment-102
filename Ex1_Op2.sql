use[Ex1_Op2]


create table AUTHOR(
	AuthorID# int,
	AuthorFirstName nvarchar(15),
	AuthorLastName nvarchar(15),
	primary key(AuthorID#)
)
create table PUBLISHER(
	PublisherID# int,
	PublisherName nvarchar(30),
	primary key(PublisherID#)
)
create table BOOK_FORMAT(
	BookFormat# int,
	FormatDescription nvarchar(30),
	primary key(BookFormat#)
)
create table BOOK_TITLE(
	ISBN_Number# int,
	Title nvarchar(30),
	PublisherID int,
	PublishedDate date,
	BookFormat int,
	Pages int,
	Price float,
	foreign key (PublisherID) references PUBLISHER,
	foreign key (BookFormat) references BOOK_FORMAT,
	primary key (ISBN_Number#)
)
create table CATEGORY(
	CategoryID# int ,
	CategoryDescription nvarchar(30)
	primary key(CategoryID#)
)
create table BOOK_CATEGORY(
	ISBN_Number# int,
	CategoryID# int,
	foreign key (ISBN_Number#) references BOOK_TITLE,
	foreign key (CategoryID#) references CATEGORY,
	primary key(ISBN_Number#,CategoryID#)
)
create table BOOK_AUTHOR(
	ISBN_Number# int,
	AuthorID# int,
	foreign key (ISBN_Number#) references BOOK_TITLE,
	foreign key (AuthorID#) references AUTHOR,
	primary key(ISBN_Number#,AuthorID#)
)
