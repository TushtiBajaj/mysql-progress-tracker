#creating Tables
create database ReadingProgress;
use Reading_Progress;

CREATE TABLE Ratings (
    BookRating INT PRIMARY KEY,
    Review VARCHAR(255)
);
CREATE TABLE books1 (
    ISBN INT PRIMARY KEY,
    Title VARCHAR(255),
    Author VARCHAR(255),
    Genre VARCHAR(50),
    PublicationDate CHAR(20),
    ReadingStatus VARCHAR(20),
    DaysAllotted INT,
    Ratings INT,
    FOREIGN KEY (Ratings) REFERENCES Ratings(BookRating)
);
CREATE TABLE Reading_Progress (
    Month varchar(225),
    BookISBN INT,
Days_alloted INT,
Ratings INT,
    FOREIGN KEY (BookISBN) REFERENCES books1(ISBN)
);
#Insering Data

insert into Ratings VALUES (1, 'Did not enjoy');
insert into Ratings VALUES (2, 'Average read');
insert into Ratings VALUES (3, 'Good read');
insert into Ratings VALUES (4, 'Enjoyed the read');
insert into Ratings VALUES (5, 'Highly Recommend');

insert into books1 VALUES (346436008,'The Perks of being a wallflower','Stephen chbosky' ,'Coming-of-Age',2004,'Read',5,4);
insert into books1 VALUES (989778895,'Little Women','Louisa May Alcott','Coming-of-Age',1868,'Read',7,5);
insert into books1 VALUES (014242417,'The Fault in our stars','John Green','Romance',2012,'Read',2,4);
insert into books1 VALUES (140886619,'Harry Potter and the philosphers Stone','J.K. Rowlings','Fantasy',1997,'Read',4,4);
insert into books1 VALUES (164473208,'Harry Potter and the chamber of secrets','J.K. Rowlings','Fantasy',1998,'Read',5,3);
insert into books1 VALUES (164473209,'Harry Potter and the prisoner of Azkaban','J.K. Rowlings','Fantasy',1999,'Read',3,4.5);
insert into books1 VALUES (133887895,'Harry Potter and the Goblet of fire','J.K. Rowlings','Fantasy',2000,'Read',5,5);
insert into books1 VALUES (747551006,'Harry Potter and the Order of the Phoniex','J.K. Rowlings','Fantasy',2003,'Read',8,3.5);
insert into books1 VALUES (439358078,'Harry Potter and the Half Blood Prince','J.K. Rowlings','Fantasy',2005,'Read',5,4);
insert into books1 VALUES (133887898,'Harry potter and the Deathly Hallows','J.K. Rowlings','Fantasy',2007,'Read',4,3.5);
insert into books1 VALUES (349413681,'Deep Work','Cal Newport','Self-help',2016,'Read',1,3.5);
insert into books1 VALUES (62073796,'Cat Among Pigeons','Agatha Christie','Mystery',1959,'Reading',NULL,NULL);
insert into books1 VALUES (753555194,'Zero to One','Peter Thiel','Business',2014,'Reading',NULL,NULL);
insert into books1 VALUES (141439513,'Pride and Prejudice','Jane Austen','Romance',1813,'TBR',NULL,NULL);
insert into books1 VALUES (7119313,'Murder on the Orient Express','Agatha Christie','Mystery',1934,'TBR',NULL,NULL);
insert into books1 VALUES (147140727,'The Cruel Prince','Holly Black','Fantasy',2018,'Read',3,4);
insert into books1 VALUES (147140865,'The Wicked King','Holly Black','Fantasy',2019,'Read',2,3.5);
insert into books1 VALUES (147140933,'The Queen of Nothing','Holly Black','Fantasy',2019,'Read',2,4.5);
insert into books1 VALUES (152660474,'Kite Runner','Khaled Hosseini','Drama',2003,'Read',4,5);
insert into books1 VALUES (125007696,'Six of Crows','Leigh Bardugo','Fantasy',2015,'Read',4,4.5);
insert into books1 VALUES (125007697,'Crooked Kingdom','Leigh Bardugo','Fantasy',2016,'Read',3,4.5);
insert into books1 VALUES (125075136,'Ninth House','Leigh Bardugo','Dark Academia',2019,'Read',3,3.5);
insert into books1 VALUES (125030170,'The Silent Patient','Alex Michaleides','Mystery',2019,'TBR',NULL,NULL);
insert into books1 VALUES (804111359,'The Secret History','Donna Tart','Dark Academia',1992,'TBR',NULL,NULL);
insert into books1 VALUES (375842209,'The book Thief','Markus Zusak','Historical Fiction',2005,'TBR',NULL,NULL);
insert into books1 VALUES (143136135,'Mrs. Dalloway','Virginia Woolfe','Psychological Fiction',1925,'TBR',NULL,NULL);
insert into books1 VALUES (141439661,'Sense and Sensibility','Jane Austen','Romance',1811,'TBR',NULL,NULL);
insert into books1 VALUES (62060627,'The Song of Achillies','Madeline Miller','Romance',2011,'TBR',NULL,NULL);
insert into books1 VALUES (141439572,'The picture of Dorian Gray','Oscar Wilde','Psychological Fiction',1890,'Read',1,3.5);
insert into books1 VALUES (152471475,'One of us is lying','Karen M McManus','Mystery',2017,'Read',2,3);
insert into books1 VALUES (62315005,'The Alchemist','Paulo Coelho','Adventure',1988,'TBR',NULL,NULL);
insert into books1 VALUES (486474917,'The Adentures of Sherlock Holmes','Arthur Canon Doyle','Mystery',1892,'Read',4,3.5);
insert into books1 VALUES (198489639,'A Good Girls Guide to Murder','Holly Jackson','Mystery',2019,'Read',3,2.5);
insert into books1 VALUES (140009620,'The Palace of Illusions','Chitra Banerjee Divakaruni','Historical Fiction',2008,'TBR',NULL,NULL);
insert into books1 VALUES (153444161,'Legendborn','Tracy Deonn','Fantasy',2020,'TBR',NULL,NULL);
insert into books1 VALUES (670097020,'The Price of Modi Years','Aakar Patel','Politics',2021,'Reading',NULL,NULL);
insert into books1 VALUES (307341550,'Sharp Objects','Gillian Flynn','Psychological Fiction',2005,'TBR',NULL,NULL);
insert into books1 VALUES (156767503,'The Road to Wigan Pier','George Orwell','Autobiography',1937,'TBR',NULL,NULL);
insert into books1 VALUES (307679059,'Tuesdays With Morrie','Mitch Albom','philoshipical',1997,'TBR',NULL,NULL);
insert into books1 VALUES (812979656,'The God of Small Things' ,'Arundati Roy','Psychological Fiction',1997,'Read',3,5);

select * from Ratings;
SELECT * FROM books1;

#updating reading progress for the month of september

insert into Reading_Progress VALUES ('september',62073796, 6, 4.5);
insert into Reading_Progress VALUES ('september',753555194, 3, 4);
insert into Reading_Progress VALUES ('september',141439513, 2, 5);
insert into Reading_Progress VALUES ('september',7119313, 5, 4);
insert into Reading_Progress VALUES ('september',153444161, 3, 5);

#updating reading progress for the month of October

insert into Reading_Progress VALUES ('october',307341550, 4, 3.5);
insert into Reading_Progress VALUES ('october',62315005, 5, 3);
insert into Reading_Progress VALUES ('october',141439661, 3, 4.5);
insert into Reading_Progress VALUES ('october',375842209, 2, 5);
insert into Reading_Progress VALUES ('october',125030170, 1, 5);

#updating reading progress for the month of November

insert into Reading_Progress VALUES ('November',156767503, 3, 2.5);
insert into Reading_Progress VALUES ('November',804111359, 1, 5);

select * from Reading_Progress;

#Deriving Results
 ##updating the reading progress of months of septmeber, november and december in the main data table. 
 ## If any book that was picked by individual but not finished after 2.5 months is DNF.
UPDATE books1 b1
JOIN Reading_Progress rp ON b1.ISBN = rp.BookISBN
SET 
    b1.ReadingStatus = 
        CASE
            WHEN b1.ReadingStatus = 'Reading' AND rp.Ratings IS NULL THEN 'DNF'
            ELSE 'Read'
        END,
    b1.Ratings = rp.Ratings,
    b1.DaysAllotted = rp.Days_alloted
WHERE rp.Ratings IS NOT NULL;

select * from books1;


#obtaining books that are yet to be read to plan for reading sessions of december
select * from books1 where ReadingStatus = 'TBR';

#Individual wishes to write a review of each book he has read. Streamlining her reviews based on her ratings.
SELECT b1.Title, b1.Author, R.Review
FROM books1 b1
JOIN Ratings R ON b1.Ratings = R.BookRating;

#Obtaining the books that were liked most by the Individual
select Title from books1 where Ratings > 4;

#Obtaining the genre that was most rated by the consumer
SELECT Genre, COUNT(*) AS BookCount
FROM books1
WHERE Ratings > 4
GROUP BY Genre
ORDER BY BookCount DESC
LIMIT 1;

#Obtaining the Individual's favorite author
SELECT Author, COUNT(*) AS BookCount
FROM books1
WHERE Ratings > 4
GROUP BY Author
ORDER BY BookCount DESC
LIMIT 1;


