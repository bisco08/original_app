# README

# アプリ名
   あなたのおすすめスポット

# アプリケーション概要
　 ・オリジナルアプリケーションを作成しました。(制作途中となっております)
　  
 　・現在、アプリで可能となっていることは、ユーザー登録・新規投稿・投稿編集、削除・投稿一覧となっております。

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
　  私自身、自然が好きであることから、同じ趣向を持った方々との情報共有や、こんな良いスポットがあることを語りたい、たくさんの人に知ってもらいたいと思ってる方々を対象に、手軽なサイトを作りたいと言う思いから制作しました。
   
# DEMO

 ・トップページ
  
  ![image](https://user-images.githubusercontent.com/88226995/135977320-8c86cce5-037c-4ebc-8e1d-6e148c561114.png)                                    
  ・「全国各地おすすめスポット」のリンクから、投稿一覧ページへ飛ぶことができます。
  
  ・フッター部分はログイン状態の際、ログアウト・新規投稿、非ログイン状態の際、ログイン・新規登録の表示が出るようになっています。(フッター部分はどのページも共通です)

 ・新規登録
　　　　
  ![image](https://user-images.githubusercontent.com/88226995/135977791-f5f1e82b-3cdf-4c67-abde-6a8068348006.png)
  
  ・新規登録画面では、ニックネーム・メールアドレス・パスワード・パスワード確認用いずれかが空欄の場合、登録できないようにしております。
  
  ・パスワードはすでに存在していたり、@なしは登録できないようにしています。
    
 ・新規投稿
 　　
  ![image](https://user-images.githubusercontent.com/88226995/135978046-9165b52c-b0fa-4c40-9ae6-69e0c4ce556f.png)
　　　　![image](https://user-images.githubusercontent.com/88226995/135978097-1fbdcc92-bca8-4d2e-a179-3322b7773896.png)
  
  ・新規投稿画面では、タイトル・写真・紹介文・都道府県を記載できるようにしております。
  
  ・全て記入のみ、投稿ボタンを押すと投稿できるようになっております。
  
  ・今後、記述内容の項目増加、写真を複数枚投稿できるようにしたいと考えております。

　　・投稿一覧　  
  
  ![image](https://user-images.githubusercontent.com/88226995/135978335-8c28af1e-8d39-40b2-a0a2-af13e0b643dd.png)
　　　　
  ・現状、投稿内容が縦並びで表示されるようになっておりますが、今後横並びに表示されるよう修正予定です。
  
  ・詳細を押すと詳細画面へ飛ぶようにしております。
    
 ・詳細ページ
 　　
  ![image](https://user-images.githubusercontent.com/88226995/135978485-861d6961-eb92-4d54-959d-2a7e2c081ae8.png)
　　　　![image](https://user-images.githubusercontent.com/88226995/135978582-693ab572-396d-40f0-a43b-e1139849501f.png)
　　　　
  ・詳細画面では、投稿者本人の場合のみ、編集・削除ボタンが表示されるようになっております。
  
  ・編集ボタンで編集画面、削除ボタンで投稿内容が削除され、トップページへ遷移されるようになっております。
    
 ・編集ページ
 　　
  ![image](https://user-images.githubusercontent.com/88226995/135978754-13dc42de-8a3d-4271-91e5-6757dec2731a.png)
　　　　![image](https://user-images.githubusercontent.com/88226995/135978801-1801256f-26d6-494e-b255-d6cf47d10254.png)
  
  ・編集画面では、内容を変更し、送信ボタンで詳細画面へ遷移し、変更内容が反映されるようになっております。
  
  ・空欄状態で送信ボタンを押すとエラーとなり、編集画面へ戻ります。
  
# 工夫した点

・自然を見たり感じたりが好きな方や、あまり関心がない方にも目に留まってもらえるよう、背景を明るく壮大な風景にした点です。

・タイトルやコメントなどの枠をアレンジし、硬くなく柔らかい印象を持ってもらえるようにしました。
  
# 今後の実装予定
・今後、各投稿へのコメント機能・いいねボタン機能・検索機能を実装予定です。

・各画面、背景と重なり見にくい箇所は修正予定です。

・また、本来トップページへ取り入れたかったものが、現状力不足で実現できなかったので、最終的に実装していきたいです。

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
