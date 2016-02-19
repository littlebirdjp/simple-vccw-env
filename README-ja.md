# simple-vccw-env

[VCCW](https://github.com/vccw-team/vccw)でWordPressの制作環境をシンプルにバージョン管理するためのサンプルです。  
クローンすると、このファイルだけでローカル環境を立ち上げ、作業内容を共有していくことができます。

## インストール

### 1. ルートディレクトリにVCCWをクローンしてください。

```
sudo git clone https://github.com/vccw-team/vccw.git /vccw
```

### 2. プロジェクトフォルダ（任意の場所）にsimple-vccw-envをクローンしてください。

```
git clone https://github.com/littlebirdjp/simple-vccw-env.git ~/prj/simple-vccw-env
cd ~/prj/simple-vccw-env
vagrant up
```

### 3. ブラウザで仮想環境のWordPressにアクセスしてください。

[http://simple-vccw-env.local/](http://simple-vccw-env.local/) または [http://192.168.33.99/](http://192.168.33.99/) を開いてください。

※Macでの利用を想定しています。Windows等の場合はそれぞれ任意のディレクトリへクローンし、VCCWの設置場所に合わせて`site.yml`と`Vagrantfile`内のパスも変更してください。

## 使い方

`import.sql`に変更が入った場合（リモートリポジトリからプルしたファイルに差分があった場合）は、以下のコマンドを実行してください。

```
vagrant ssh
wp --path=/var/www/wordpress db import /vagrant/import.sql
exit
```

WordPressの設定や投稿などのデータに変更を加えた場合は、以下のコマンドを実行してから、`import.sql`もコミット＆プッシュしてください。

```
vagrant ssh
wp --path=/var/www/wordpress db export /vagrant/import.sql
exit
```

※テーマやプラグイン等のファイルを編集した場合は、通常通りコミット＆プッシュして、作業内容を共有していってください。
