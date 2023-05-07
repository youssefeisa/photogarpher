use libarry 
GO 
create table book(
 ISBN INT primary key,
 title varchar (50) not null,
 available varchar (50) not null
 );
 create table author(
 Id int primary key,
 name varchar(50) not null,
 address varchar(50),
 );
 create table member
 (
 Id int primary key,
 name varchar(50) not null,
 address varchar(50) not null,
 membership varchar (20) not null,
 );
 create table publisher
 (
 Id int primary key,
 name varchar(50) not null,
 address varchar(50) not null,
 phone1 int not null,
 phone2 int ,
 phone3 int 
 );
 create table book_author(
 Id int primary key,
 bookId int not null foreign key references book(ISBN),
 authorId int not null foreign key references author(Id)
 );
 CREATE TABLE Publishers (
    PublisherID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL
);


CREATE TABLE Phones (
    PhoneID INT PRIMARY KEY IDENTITY(1,1),
    PublisherID INT NOT NULL,
    Number VARCHAR(20) NOT NULL,
    FOREIGN KEY (PublisherID) REFERENCES Publishers(PublisherID)
);

CREATE TABLE Members (
    MemberID INT PRIMARY KEY IDENTITY(1,1),
    Name VARCHAR(255) NOT NULL,
    Address VARCHAR(255) NOT NULL,
    MembershipType VARCHAR(10) NOT NULL
);

CREATE TABLE Borrowed_Books (
    BorrowID INT PRIMARY KEY IDENTITY(1,1),
    MemberID INT NOT NULL,
    ISBN VARCHAR(13) NOT NULL,
    BorrowDate DATE NOT NULL,
    ReturnDate DATE NOT NULL,
    FOREIGN KEY (MemberID) REFERENCES Members(MemberID),
    FOREIGN KEY (ISBN) REFERENCES book(ISBN)
);