# ベースイメージ
FROM centos:centos6

# Apacheのインストール
RUN yum install -y httpd

# ファイルをコピー
COPY ./htdocs/test.html /usr/local/apache2/htdocs/

# 80番ポート
EXPOSE 80

# Apacheの起動(コンテナ化時に実行される)
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]