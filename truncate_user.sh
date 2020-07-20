mysql -u root -paherceo2$ --database softmix_new_db -Bse "delete from users where id>2;"
mysql -u root -paherceo2$ --database softmix_new_db -Bse "alter table users auto_increment=2;"
mysql -u root -paherceo2$ --database softmix_new_db -Bse "truncate table payments;"
mysql -u root -paherceo2$ --database softmix_new_db -Bse "delete from roles where id>2;"
mysql -u root -paherceo2$ --database softmix_new_db -Bse "alter table roles auto_increment=2;"


