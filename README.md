# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| birthday           | date                | null: false               |
| favorites_ski_resort  | string           | null: false               |


### Association
- has_many :posts
- has_many :comments



## posts table

| Column            | Type       | Options                        |
|------------------ |------------|--------------------------------|
| area_id 　        | integer     | null: false                    |
| prefecture_id     | integer    | null: false                    | 
| ski_resort_name   | string     | null: false                    |
| weather_id        | integer    | null: false                    |
| text              | text       | null: false                    |
| user              | references | null: false, foreign_key: true |

### Association
- has_many :comments
- belongs_to :user



## comments table

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| content   | text       | null: false                    |
| posts     | references | null: false, foreign_key: true |
| user      | references | null: false, foreign_key: true |

### Association
- belongs_to :user
- belongs_to :post





