# テーブル設計

## kainushis テーブル

| Column             | Type       | Options             |
| ------------------ | ---------- | ------------------- | 
| email              | string     | null: false, unique |
| encrypted_password | string     | null: false         |
| name               | string     | null: false         |
| profile            | text       | null: false         |
| work               | text       | null: false         |
| hobby              | text       | null: false         |

### Association

- has_many :wankos
- has_many :foods

## wankos テーブル

| Column     | Type       | Options                        |
| ---------- | ---------- | ------------------------------ |
| name       | string     | null: false                    |
| size       | text       | null: false                    |
| color      | text       | null: false                    |
| kainushi   | references | null: false, foreign_key: true |

※imageはActiveStrageで実装するため含まない
### Association

- belongs_to :kainushi
- has_many   :foods

## foods テーブル

| Column    | Type       | Options                        |
| --------- | ---------- | ------------------------------ |
| oyastu    | text       | null: false                    |
| wanko     | references | null: false, foreign_key: true |
| kainushi  | references | null: false, foreign_key: true |

### Association

- belongs_to :kainushi
- belongs_to :wanko
