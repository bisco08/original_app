# README

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
- belong_to :user

# comments テーブル

| Column             | Type        | Options     |
| ------------------ | ----------- | ----------- |
| text               | text        | null: false |  
| user               | references  |             |
| prototype          | references  |             |

# Association

- belong_to :user
- belong_to :post



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
