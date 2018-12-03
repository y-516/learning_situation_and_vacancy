# README
# 学習状況と空席確認アプリ
## 概要
オフィスで勉強中の学習者の学習内容と空席状況をリアルタイムで確認できます。
## コンセプト
無駄な時間を減らすこと
## バージョン
Ruby 2.3.1  
Ruby on Rails 5.1.6  
## 機能一覧
* ログイン機能
  * メールアドレスとパスワードでログインする
* 新規ユーザー登録機能
  * 名前、メールアドレス、パスワードは必須
* 座席数入力機能
  * 座席数を決めることができるのは管理者権限を持つ者のみ
* 座席状況一覧表示機能
  * 空席、満席、その日の各ユーザーの学習予定時間を表示
* 着席機能
* 帰宅機能
* ユーザー詳細登録機能
* ユーザー詳細表示機能
* ユーザー詳細更新機能
  * 各ユーザー詳細内容は　学習内容、目標、知識、担当プロジェクト、役職
* フォロー機能
  * ユーザー同士はフォロー(繋がる)ことでお互いの詳細を見ることができる
## カタログ設計
 <https://docs.google.com/spreadsheets/d/18D_A9ykGz5RmSLJcx0Pu7qoXvDgDNa_5FyKo-6OkU1A/edit?usp=sharing>
## テーブル定義
https://docs.google.com/spreadsheets/d/1uDDoA1j09LThyOvBhebe7XZTTTJ0nhkkZWQJVCCNcYQ/edit?usp=sharing
## 画面遷移図
<https://docs.google.com/spreadsheets/d/1n6UI_q4t8l4eQ8kqdAoutbU4Q56RhH4FgpLJECJ88is/edit?usp=sharing>
## 画面ワイヤーフレーム
<https://docs.google.com/spreadsheets/d/1Sj7FLwvWR7YvEor_siXszvIm3CV74QlgJzpqkKhCRC0/edit?usp=sharing>
## 使用予定Gem
  * devise
  * kaminari
  * carrierwave
  * rubocop
  * mini_magick
  * cancancan
