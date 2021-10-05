# README

# アプリ名
   あなたのおすすめスポット

# アプリケーション概要
　  オリジナルアプリケーションを作成しました。(制作途中となっております)
　  現在、アプリで可能となっていることは、ユーザー登録・新規投稿・投稿編集、削除・投稿一　覧となっております。

# 本番環境
  * 接続先情報(本番環境) 
  * https://original-app-36583.herokuapp.com/ 
  * Herokuでデプロイしているため、Herokuの仕様により本番環境にアクセス頂いた際に画像リンクが切れている可能性がございます。 

  * テスト用アカウント等 
    * 投稿用 
        * メールアドレス：test@test.com 
        * パスワード：test0907 
  * Githubリポジトリ 
  * https://github.com/bisco08 

# 制作背景
　  私自身、自然が好きであることから、同じ趣向を持った方々との情報共有や、こんな良い　スポットがあることを語りたい、たくさんの人に知ってもらいたいと思ってる方々を対象　に、手軽なサイトを作りたいと言う思いから制作しました。
   
# DEMO

 ・トップページ
  
  ![image](https://user-images.githubusercontent.com/88226995/135977320-8c86cce5-037c-4ebc-8e1d-6e148c561114.png)                                    
  ・「全国各地おすすめスポット」のリンクから、投稿一覧ページへ飛ぶことができます。
  ・フッター部分はログイン状態の際、ログアウト・新規投稿、非ログイン状態の際、ログイン・新規登録の表示が出るようになっています。(フッター部分はどのページも共通です)

 ・新規登録
　　　　
  ![image](https://user-images.githubusercontent.com/88226995/135977791-f5f1e82b-3cdf-4c67-abde-6a8068348006.png)
  ・新規登録画面は、ニックネーム・メールアドレス・パスワード・パスワード確認用いずれか空欄で登録ボタンを押した際、登録できないようにしています。
　　　　・パスワードはすでに存在していたり、@なしは登録できないようにしています。
    
 ・新規投稿
 　　
  ![image](https://user-images.githubusercontent.com/88226995/135978046-9165b52c-b0fa-4c40-9ae6-69e0c4ce556f.png)
　　　　![image](https://user-images.githubusercontent.com/88226995/135978097-1fbdcc92-bca8-4d2e-a179-3322b7773896.png)
　　　　・新規投稿画面では、現状、タイトル・写真・紹介文・都道府県を記述できるようにしてあります。
　　　　・全て記入のみ、投稿ボタンを押すと投稿できるようになっております。
　　　　・今後、記述内容の項目増加、写真を複数枚投稿できるようにしたいと考えております。

　　・投稿一覧　  
  
  ![image](https://user-images.githubusercontent.com/88226995/135978335-8c28af1e-8d39-40b2-a0a2-af13e0b643dd.png)
　　　　・現状、縦で表示されるようになっているのですが、横並びで表示されるよう変更する予定です。
　　　　・詳細を押すと詳細画面へ飛ぶようにしております。
    
 ・詳細ページ
 　　
  ![image](https://user-images.githubusercontent.com/88226995/135978485-861d6961-eb92-4d54-959d-2a7e2c081ae8.png)
　　　　![image](https://user-images.githubusercontent.com/88226995/135978582-693ab572-396d-40f0-a43b-e1139849501f.png)
　　　　・詳細ページに関しまして、投稿者本人の場合、編集・削除ボタンが表示されるようにしております。
　　　　・編集ボタンで編集ページ、削除ボタンで投稿内容が削除され、トップページへ戻るようになっております。
    
 ・編集ページ
 　　
  ![image](https://user-images.githubusercontent.com/88226995/135978754-13dc42de-8a3d-4271-91e5-6757dec2731a.png)
　　　　![image](https://user-images.githubusercontent.com/88226995/135978801-1801256f-26d6-494e-b255-d6cf47d10254.png)
  ・編集ページでは、内容を変更し、送信ボタンを押すと詳細ページへ戻ります。
　　　　・記述を空欄にした状態で送信ボタンを押すと、エラーで編集ページに戻ります。
 
# 今後の実装予定

　　 ・今後につきましては、各投稿へのコメント機能・いいねボタンの実装、検索機能の実装を考えております。
  ・各ページ見にくい箇所があったりするので、今後、修正する予定です。
  ・また、本来トップページに日本地図を取り入れ、閲覧したい都道府県を押すと、各都道府県ページへ遷移できるように作成したかったのですが、現状、力不足で取り入れることができませんでした。(最終的に実装することが目標です)
  
# 開発環境
   
  ・Ruby/Ruby on Rails/MySQL/Github/AWS/Visual Studio Code

　
# users テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| email              | string     | null: false |  
| password           | string     | null: false |
| nickname           | string     | null: false |

# Association

- has_many :posts
- has_many :comments

# posts テーブル

| Column             | Type       | Options     |
| ------------------ | ---------- | ----------- |
| title              | string     | null: false |  
| content            | test       | null: false |
| area_id            | integer    | null: false |

# Association

- has_many :comments
- belongs_to :user

# comments テーブル

| Column             | Type        | Options     |
| ------------------ | ----------- | ----------- |
| text               | text        | null: false |  
| user               | references  |             |
| post               | references  |             |

# Association

- belongs_to :user
- belongs_to :post





This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
