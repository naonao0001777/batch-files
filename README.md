# SQLServerデータベース復元バッチ
sqlserver-restore-database.bat

# がいよう
業務で何回もやるから作成したが、誰も使わないからこっちで研究するために作成したリポジトリ  
まあ、多分不安なんだろうな..

# 使い方
1. sqlserver-restore-database.batをたたく
* データベースを入れる
* ログインユーザーを入れる
* パスワードを入れる

# 参考
* [SQL Serverのバックアップコマンドでデータベースバックアップ
](https://itlogs.net/sql-server-backup-command/)
* [【SQL Server 2012】バッチ(コマンドプロンプト)でリストア](http://itdiary.info/%E3%83%87%E3%83%BC%E3%82%BF%E3%83%99%E3%83%BC%E3%82%B9/post-114/)
* [RESTORE ステートメント (Transact-SQL)](https://docs.microsoft.com/ja-jp/sql/t-sql/statements/restore-statements-transact-sql?view=sql-server-ver15)

# 排他アクセス制限
* 排他アクセスでデータベースを復元できねえことがある
* そういう場合は、オフラインかデタッチをする→復元
* デタッチコマンドが上手くいかないからオフラインしているわけ
