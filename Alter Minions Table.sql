alter table  Minions
add  TownId int 

alter table  Minions
ADD CONSTRAINT Minions_TownId_FK
FOREIGN KEY (TownId)
 REFERENCES Towns(Id)

select * from Minions