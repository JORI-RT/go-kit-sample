# ベースとなるDockerイメージ指定
FROM golang:latest
# コンテナ内に作業ディレクトリを作成
RUN mkdir /go/src/work
#  goのrestのlibraryをインストール
RUN go get -u github.com/go-kit/kit/transport/http
RUN go get -u github.com/go-kit/kit/endpoint
# コンテナログイン時のディレクトリ指定
WORKDIR /go/src/work
# ホストのファイルをコンテナの作業ディレクトリに移行
ADD ./cmd/ /go/src/work
ENTRYPOINT ["go", "run", "main.go"]