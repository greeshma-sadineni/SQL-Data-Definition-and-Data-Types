alter table users 
drop constraint PK__users__3214EC07617BD345;
alter table users 
add constraint PK_users primary key(Id,Username);