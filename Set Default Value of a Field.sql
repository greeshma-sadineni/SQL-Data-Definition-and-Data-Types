alter table users
add constraint df_LastLoginTime 
default convert(time ,GETDATE()) for LastLoginTime ;
