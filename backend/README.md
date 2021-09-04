# README

# コンテナ内で任意のコマンドを実行する

$ docker-compose run <サービス名> <任意のコマンド>
例：Gemfileをいじった場合
$ docker-compose run backend bundle install

# Docker イメージを作成する

$ docker-compose build

# 複数のコンテナの生成し起動する

$ docker-compose up

# コンテナを停止する

$ docker-compose stop

# 停止中のコンテナを削除する

$ docker-compose rm -f

# コンテナの停止・削除を一度に行う

$ docker-compose down

# コンテナの一覧を表示する

$ docker-compose ps -a
