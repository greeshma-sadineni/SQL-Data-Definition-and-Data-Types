alter table users
add check  (len(password)>=5);
