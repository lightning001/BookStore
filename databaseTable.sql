
create table Accounts(
accountID int auto_increment primary key,
name nvarchar(100),
email nchar(50) unique not null,
passwords nchar(28) not null,
isLock bool default false,
gender bool default 0,
linkImg varchar(50) DEFAULT '/img/men.png',
createDate timestamp default now(),
money float default 0,
levels int default 0
);

create table Author(
accountID int primary key,
authorName nvarchar(100),
biography nvarchar(2000),
constraint fk_author1 foreign key (accountID) references Accounts(accountID)
);

create table Manager(
accountID int primary key,
office nvarchar(100),
constraint fk_manager1 foreign key (accountID) references Accounts(accountID)
);

create table Category(
categoryID int auto_increment primary key,
categoryName nvarchar(100),
slug nvarchar(110) unique not null,
decription nvarchar(2000)
);

create table Book(
bookID int auto_increment primary key,
bookName nvarchar(200),
slug  nvarchar(210) unique not null,
state boolean default false,
age int,
introduction nvarchar(1000),
postDate timestamp default now(),
country nvarchar(50),
price float default 0,
likes int default 0,
subcribe int default 0
);

create table Book_category(
bookID int not null,
categoryID int not null,
constraint pk_book_category primary key (bookID, categoryID),
constraint fk_book_category1 foreign key (bookID) references Book(bookID),
constraint fk_book_category2 foreign key (categoryID) references Category(categoryID)
);

create table Book_author(
bookID int,
authorID int,
constraint pk_book_author primary key (bookID, authorID),
constraint fk_book_author2 foreign key (authorID) references Accounts(accountID),
constraint fk_book_author1 foreign key (bookID) references Book(bookID)
);

create table BookType(
typeID int auto_increment primary key,
typeName nvarchar(20),
slug varchar(25) unique
);

create table Book_BookType(
bookID int,
typeID int,
constraint pk_book_booktype primary key (bookID, typeID),
constraint fk_book_booktype1 foreign key (bookID) references Book(bookID),
constraint fk_book_booktype2 foreign key (typeID) references BookType(typeID)
);

create table Chapter(
chapterID int auto_increment primary key,
bookID int,
orders int,
chapterName nvarchar(200),
slug varchar(210) unique,
postDate timestamp default now(),
isRead bool default true,
likes int default 0,
constraint fk_chapter1 foreign key (bookID) references Book(bookID)
);

create table Chapter_content(
chapterID int,
chapter int,
linkContent nvarchar(300),
constraint pk_chapter_content primary key (chapterID, chapter),
constraint fk_chapter_content foreign key (chapterID) references Chapter(chapterID)
);

create table Exchanges(
exchangeID int auto_increment primary key not null,
accountID int,
bookID int,
chapterID int,
xtime timestamp default now(),
amount float default 0 check (amount between 0 and  Accounts.money),
constraint fk_exchange1 foreign key (accountID) references Accounts(accountID),
constraint fk_exchange2 foreign key (bookID) references Book(bookID),
constraint fk_exchange3 foreign key (chapterID) references Chapter(chapterID)
);

create table Library(
libID int,
accountID int,
constraint pk_library primary key (libID, accountID),
constraint fk_library1 foreign key (accountID) references Accounts(accountID)
);

create table SubcribeLib(
libID int,
bookID int,
constraint pk_library primary key (libID, bookID),
constraint fk_subcribe1 foreign key (libID) references Library(libID),
constraint fk_subcribe2 foreign key (bookID) references Book(bookID)
);

create table LikeLib(
libID int,
bookID int,
chapterID int,
constraint pk_likelib primary key (libID, chapterID),
constraint fk_like1 foreign key (libID) references Library(libID),
CONSTRAINT `fk_like2` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`),
constraint fk_like3 foreign key (chapterID) references Chapter(chapterID)
);

create table statistic(
id int auto_increment primary key,
month int check(month>0),
year int check(year>0),
createaccount int default 0,
writebook int default 0,
writechapter int default 0,
readbook int default 0,
likebook int default 0,
exchanges int default 0
);

INSERT INTO `accounts` VALUES (1,'Phạm Trang Linh Đan','14130185@st.hcmuaf.edu.vn','123',0,1,'/img/profile/linh_dan.jpg','2017-05-21 10:51:07',0,1),(2,'Nhan Vương Ngọc Bảo','14130008@st.hcmuaf.edu.vn','123',0,0,'/img/profile/ngoc_bao.jpg','2017-05-21 10:51:08',0,2),(3,'Đỗ Nguyên Tú','14130373@st.hcmuaf.edu.vn','123',0,0,'/img/profile/nguyen_tu.jpg','2017-05-21 10:51:08',0,1),(4,'Nguyễn Hoàng Hưng','14130047@st.hcmuaf.edu.vn','123',0,0,'/img/profile/hoang_hung.jpg','2017-05-21 10:51:08',0,1),(5,'Trần Thành Long','14130058@st.hcmuaf.edu.vn','123',0,0,'/img/profile/thanh_long.jpg','2017-05-21 10:51:08',0,2),(6,'Nguyễn Trung Tính','14130344@st.hcmuaf.edu.vn','123',0,0,'/img/profile/trung_tinh.jpg','2017-05-21 10:51:08',0,2),(7,'Phạm Lê Công Phương','14130291@st.hcmuaf.edu.vn','123',0,0,'/img/profile/cong_phuong.jpg','2017-05-21 10:51:08',0,3),(8,'Thân Nguyễn Xuân Thái','14130319@st.hcmuaf.edu.vn','123',0,0,'/img/profile/xuan_thai.jpg','2017-05-21 10:53:53',0,3),(9,'Nguyễn Văn A','nguyenvana@gmail.com','123',0,0,'/img/men.png','2017-05-21 10:53:53',0,0),(10,'Nguyễn Thị B','nguyenthib@gmail.com','123',0,1,'/img/woman.png','2017-05-21 10:53:53',0,0),(11,'Hoàng Anh','hoanganh@gmail.com','123',0,0,'/img/men.png','2017-05-21 10:53:53',0,0),(12,'Nguyễn Thị Nhàn','nguyennhan@abc.com','123',0,1,'/img/men.png','2017-05-28 04:21:39',0,0),(13,'Trương Mỹ Linh','mylinh223@gmail.com','123',0,1,'/img/men.png','2017-05-28 04:21:39',0,0),(14,'Lê Thị An','lethian@gmail.com','123',0,1,'/img/men.png','2017-05-28 04:21:39',0,0),(15,'Lưu lan Anh','lananh96@gmail.com','123',0,1,'/img/men.png','2017-05-28 04:21:39',0,0),(16,'Bùi Đình Trọng','trongkull31@yahoo.com','123',0,0,'/img/men.png','2017-05-28 04:21:39',0,0),(17,'Lê Thái Thông','thongle001@gmail.com','123',0,0,'/img/men.png','2017-05-28 04:21:39',0,0),(18,'ABC','1515@dada.daad','123',0,0,'/img/men.png','2017-05-28 05:19:51',0,0);
INSERT INTO `author` VALUES (1,'ABC',NULL),(2,'dđ',NULL),(3,'dsa',NULL),(4,'Lan',NULL),(5,'Ko',NULL),(6,'Lo',NULL),(7,'K',NULL),(8,'L',NULL),(9,'P',NULL),(10,'PK',NULL);
INSERT INTO `category` VALUES (1,'Kiếm Hiệp','kiem-hiep',NULL),(2,'Võng Du','vong-du',NULL),(3,'Khoa Huyễn','khoa-huyen',NULL),(4,'Ngôn Tình','ngon-tinh',NULL),(5,'Ma Pháp','ma-phap',NULL),(6,'Tiên Hiệp','tien-hiep',NULL),(7,'Xuyên Không','xuyen-khong',NULL),(8,'Tu Chân','tu-chan',NULL),(9,'Quan Trường','quan-truong',NULL),(10,'Quỷ Tu','quy-tu',NULL),(11,'Huyễn Ảo','huyen-ao',NULL),(12,'Dị Giới','di-gioi',NULL),(13,'Lịch Sử Quân Sự','lich-su-quan-su',NULL),(14,'Truyện Teen','truyen-teen',NULL),(15,'Cổ Đại','co-dai',NULL),(16,'Sắc Hiệp','sac-hiep',NULL),(17,'Dị Năng','di-nang',NULL),(18,'Viễn Tưởng','vien-tuong',NULL),(19,'Thám Hiểm','tham-hiem',NULL),(20,'Đô Thị','do-thi',NULL),(21,'Huyền Huyễn','huyen-huyen',NULL),(22,'Trinh Thám','trinh-tham',NULL),(23,'Kỳ Bí','ky-bi',NULL),(24,'Comic','comic',NULL),(25,'VnComic','vncomic',NULL),(26,'Âm Nhạc','am-nhac',NULL),(27,'One Shot','one-shot',NULL);
INSERT INTO `booktype` VALUES (1,'Truyện tranh','truyen-tranh'),(2,'Truyện chữ','truyen-chu'),(3,'Truyện audio','truyen-audio'),(4,'Truyện tự sáng tác','truyen-tu-sang-tac');
INSERT INTO `statistic` VALUES (1,1,2017,200,102,475,1514785,1004,350),(2,2,2017,256,195,800,1489215,956,540),(3,3,2017,568,201,1256,1254789,1246,680),(4,4,2017,685,214,1360,1456321,145,875),(5,5,2017,568,253,1500,3559442,4515,658),(6,6,2017,31,15,180,4568,12,50),(7,6,2016,1515,458,4846,4546,4646,4646);




