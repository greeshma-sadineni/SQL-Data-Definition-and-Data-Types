backup database Lexicon
to disk = 'F:\Sql\lexicon-backup.bak';

drop database Lexicon;
Restore database Lexicon  from disk= 'F:\Sql\lexicon-backup.bak';