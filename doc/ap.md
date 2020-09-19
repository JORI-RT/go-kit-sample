
## Dockerで起動ー＞動作確認
```sh
## docker fileをbuild
./scripts/build-image.sh

## イメージを起動
./scritps/start.sh

## イメージをSTOP
./scritps/stop.sh

## イメージを削除
./scritps/delete-image.sh

## 動作確認
curl -XPOST -d'{"s":"hello, world"}' localhost:8081/uppercase
```