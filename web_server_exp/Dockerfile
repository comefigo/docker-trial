# ベースイメージ
FROM centos:centos6

# Apacheのインストール
RUN yum install -y httpd

# ファイルをコピー
COPY ./htdocs/test.html /var/www/html/

# Apacheの起動(コンテナ化時に実行される)
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]