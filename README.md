# WSL上のSeleniumからWin10のChromeを操作するテスト
色々調べた結果と記録を残す。

## 環境構築
* WSLのセットアップ
  - すでに終わっているとする
* Rubyのセットアップ
  - WSL上でrbenvで2.7.0を入れているとする
* ChromeWebdriver
  - [こちら](https://sites.google.com/a/chromium.org/chromedriver/downloads)のサイトから「chromedriver_win32.zip」をDLして、適当な場所に解凍しておく
  - 解凍したパスを環境変数のPATHに追記
* JavaをWin10にインストール
  - 普通に
  - java.exeへパスを通す
* Selenium Server
  - [こちら](https://selenium.dev/downloads/)からダウンロード
  - 単なるjarファイルなので、このまま実行できる

## 実行
1. Selenium Serverの起動
   - CMDあたりから、DLしてきた場所へ移動し`java -jar selenium-server-standalone-3.141.59.jar -port 4445`として起動
  - なお、jarファイルの名前はバージョンで異なると思われる
2. Selenium Serverの起動確認
   - Win10のブラウザから`http://localhost:4445/wd/hub`にアクセスして画面が表示されればOK

3. WSLからRubyを実行
  - `bundle exec ruby selenium.rb`
  - うまくいけば、ブラウザが立ち上がるはず

## 懸念・疑問など
* 調べてみると、もう少し簡単に出来そうな方法があるっぽいけど、うまくいかなかった。
(直接コード内でchromedriverの場所を教えてあげて動かす方法)

* これを使うために、以下のものを入れないといけないのが面倒
  - java
  - selenium Server

* これらの手順を共有して問題が起こった場合の対処方法
