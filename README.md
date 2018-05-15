# php5.3とmysql5.6とapache2.2@centos6

```sh
$ docker build . -t centos6:php5.3
```

本当はphpenvでやりたいんだけど無限に失敗するのでやめた.


## 起動

```sh
$ docker run --rm -d -it -v $(pwd):/app -p 80:80 centos6:php5.3
```

