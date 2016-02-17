# simple-vccw-env

[VCCW](https://github.com/vccw-team/vccw)でWordPressの制作環境をシンプルにバージョン管理するためのサンプルです。  
クローンすると、このファイルだけでローカル環境を立ち上げ、作業内容を共有していくことができます。

## インストール

1. ルートディレクトリにVCCWをクローンしてください。  
```
cd /
sudo git clone https://github.com/vccw-team/vccw.git
```
2. プロジェクトフォルダ（任意の場所）にsimple-vccw-envをクローンしてください。
```
cd ~/prj(Your projects folder)
git clone https://github.com/littlebirdjp/simple-vccw-env.git
cd simple-vccw-env
vagrant up
```

※Macでの利用を想定しています。Windows等の場合はそれぞれ任意のディレクトリへクローンし、VCCWの設置場所に合わせて`site.yml`と`Vagrantfile`内のパスも合わせて変更してください。

## 使い方

1. `import.sql`に変更が入った場合（リモートリポジトリからプルしたファイルに差分があった場合）は、以下のコマンドを実行してください。
```
vagrant ssh
wp --path=/var/www/wordpress db import /vagrant/import.sql
```
2. WordPressの設定や投稿などのデータに変更を加えた場合は、以下のコマンドを実行してから、`import.sql`もコミット＆プッシュしてください。
```
vagrant ssh
wp --path=/var/www/wordpress db export /vagrant/import.sql
```

※テーマやプラグイン等のファイルを編集した場合は、通常通りコミット＆プッシュして、作業内容を共有していってください。
