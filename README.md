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
