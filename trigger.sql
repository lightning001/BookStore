delimiter $$
create trigger delete_account before delete on accounts 
for each row
begin
	delete from author where author.accountID = old.accountID;
    delete from book_author where book_author.accountID = old.accountID;
    delete from library where library.accountID = old.accountID;
    delete from manager where manager.accountID = old.accountID;
    update exchanges set exchanges.accountID=null where exchanges.accountID = old.accountID;
end $$
delimiter ;

delimiter $$
create trigger insert_account_manager after insert on accounts
for each row
begin
	if not exists (select * from manager where manager.accountID = new.accountID)
    then
		if(new.levels=1)
			then insert into manager values(new.accountID, 'admin');
		elseif(new.levels=2)
			then insert into manager values(new.accountID, 'mod');
		elseif(new.levels=3)
			then insert into manager values(new.accountID, 'publisher');
		end if;
	end if;
end $$
delimiter ;

delimiter $$
create trigger update_account_manager after update on accounts
for each row
begin
	if not exists (select * from manager where manager.accountID = new.accountID)
    then
		if(new.levels=1)
			then insert into manager values(new.accountID, 'admin');
		elseif(new.levels=2)
			then insert into manager values(new.accountID, 'mod');
		elseif(new.levels=3)
			then insert into manager values(new.accountID, 'publisher');
		end if;
    end if;
end $$
delimiter ;

delimiter $$
create trigger delete_author before delete on author 
for each row
begin
    delete from book_author where old.accountID = book_author.accountID;
end $$
delimiter 

delimiter $$
create trigger delete_book before delete on book 
for each row
begin
	delete from book_author where old.bookID = book_author.bookID;
    delete from book_booktype where old.bookID = book_booktype.bookID;
    delete from book_category where old.bookID = book_category.bookID;
    delete from chapter where old.bookID = chapter.bookID;
    delete from likelib where old.bookID = likelib.bookID;
    delete from subcribelib where old.bookID = subcribelib.bookID;
    update exchanges set bookID = null where old.bookID = exchanges.bookID;
end $$
delimiter ;

delimiter $$
create trigger delete_category before delete on category 
for each row
begin
	delete from book_category where old.categoryID = book_category.categoryID;
end $$
delimiter ;

delimiter $$
create trigger delete_chapter before delete on chapter 
for each row
begin
	delete from chapter_content where old.chapterID = chapter_content.chapterID;
    delete from likelib where old.chapterID = likelib.chapterID;
    update exchanges set chapterID = null where old.chapterID = exchanges.chapterID;
end $$
delimiter ;

delimiter $$
create trigger delete_library before delete on library 
for each row
begin
	delete from likelib where likelib.libID = old.libID;
    delete from subcribelib where subcribelib.libID = old.libID;
end $$
delimiter ;

delimiter $$
create trigger delete_manager after delete on manager 
for each row
begin
	update accounts set accounts.levels = 0 where accounts.accountID = OLD.accountID;
end $$
delimiter ;

delimiter $$
create trigger update_manager_account after update on manager 
for each row
begin
	if exists (select * from accounts where accounts.accountID = new.accountID)
	then
		update accounts set accounts.levels = 1 where accounts.accountID = new.accountID and new.office = 'admin';
		update accounts set accounts.levels = 2 where accounts.accountID = new.accountID and new.office = 'mod';	
		update accounts set accounts.levels = 3 where accounts.accountID = new.accountID and new.office = 'publisher';
		update accounts set accounts.levels = 0 where accounts.accountID = new.accountID and new.office is null;
	end if;
end $$
delimiter ;

delimiter $$
create trigger trigger_insert_account_statistic after insert on accounts
for each row
begin
	declare ngay date; set ngay = now();
	if not exists (select * from statistic where statistic.month = month(ngay) and statistic.year = year(ngay))
	then
		insert into statistic values(month(ngay), year(ngay), 1, 0, 0, 0, 0, 0);
	else
    update statistic set statistic.createaccount = statistic.createaccount+1 
		where statistic.month = month(ngay) and statistic.year = year(ngay);
	end if;
end $$
delimiter ;

delimiter $$
create trigger trigger_insert_book_statistic after insert on book
for each row
begin
	declare ngay date; set ngay = now();
	if not exists (select * from statistic where statistic.month = month(ngay) and statistic.year = year(ngay))
	then
		insert into statistic values(month(ngay), year(ngay), 0, 1, 0, 0, 0, 0);
    end if;
    update statistic set statistic.writebook = statistic.writebook+1 
		where statistic.month = month(ngay) and statistic.year = year(ngay);

end $$
delimiter ;

delimiter $$
create trigger trigger_insert_exchange_statistic after insert on exchanges
for each row
begin
	if not exists (select * from statistic where statistic.month = month(ngay) and statistic.year = year(ngay))
	then
		insert into statistic values(month(ngay), year(ngay), 0, 0, 0, 0, 0, 1);
	else
    update statistic set statistic.exchange = statistic.exchange+1 
		where statistic.month = month(ngay) and statistic.year = year(ngay);
    end if;
end $$
delimiter ;

delimiter $$
create trigger trigger_insert_chapter_statistic after insert on chapter
for each row
begin
	declare ngay date; set ngay = now();
	if not exists (select * from statistic where statistic.month = month(ngay) and statistic.year = year(ngay))
	then
		insert into statistic values(month(ngay), year(ngay), 0, 0, 1, 0, 0, 0);
	else
    update statistic set statistic.writechapter = statistic.writechapter+1 
		where statistic.month = month(ngay) and statistic.year = year(ngay);
    end if;
end $$
delimiter ;

delimiter $$
create trigger trigger_update_book_statistic after update on book
for each row
begin
	declare ngay date; set ngay = now();
	if not exists (select * from statistic where statistic.month = month(ngay) and statistic.year = year(ngay))
	then
		insert into statistic values(month(ngay), year(ngay), 0, 0, 0, 1, 1, 0);
	else
		update statistic set statistic.readbook = statistic.readbook + 1
			where statistic.month = month(ngay) and statistic.year =  year(ngay);
		if(book.likes < new.likes)
		then
			update statistic set statistic.likebook = statistic.likebook + 1
			where statistic.month = month(ngay) and statistic.year = year(ngay);
		elseif(book.likes > new.likes)
        then
			update statistic set statistic.likebook = statistic.likebook - 1
			where statistic.month = month(ngay) and statistic.year = year(ngay);
		end if;
    end if;
end $$
delimiter ;