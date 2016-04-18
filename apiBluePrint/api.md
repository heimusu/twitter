# Group tweet関連

## timeline [/]
### タイムラインの取得 [GET]
+ Request
  + Headers
      Content-Type: application/json
      Authorization: Bearer xxxx

+ Response 200 (application/json)
    + Body
      {
        "result": true,
        "tweets": [
          {
            "tweet_id": 1458414329,
            "user_id": 1,
            "username": "test_user",
            "body": "良い時期にしがらみに負けていると、それが後々おかしなことになる原因となる",
            "created_at": "2016-04-18 00:00:00"
          },
          {
            "tweet_id": 1421320084,
            "user_id": 2,
            "username": "test_user",
            "body": "「貧すれば鈍する」は時間に追われているマネジメントが意識すべき言葉。",
            "created_at": "2016-04-19 00:00:00"
          },
          {
            "tweet_id": 1458414329,
            "user_id": 1,
            "username": "test_user",
            "body": "わざと転ぶなよ",
            "created_at": "2016-04-20 00:00:00"
          },
          {
            "tweet_id": 1429671337,
            "user_id": 1,
            "username": "test_user",
            "body": "アイムチキン」チキンを注文するときに飛び出した珍言 by長嶋茂雄名言",
            "created_at": "2016-04-18 00:00:00"
          },
          {
            "tweet_id": 1434950469,
            "user_id": 3,
            "username": "test_user",
            "body": "ＴＶ吹き替え洋画を見て「最近の外人さんは、みんな日本語上手だねえ」byガッツ石松",
            "created_at": "2016-04-18 00:00:00"
          },
          {
            "tweet_id": 1431887245,
            "user_id": 4,
            "username": "test_user",
            "body": "スマートフォンが出てきて、我々にもチャンスはあると思っています。また新しい「よーい、ドン」が始まったんです。我々はこの２年で、会社をスマートフォン企業に入れ替えました。いま年商１６００億のうちの１０００億はスマートフォン。そこでトップになれる可能性があるなと。",
            "created_at": "2016-04-18 00:00:00"
          }
        ]
      }

## tweet [/tweet]
### tweet投稿 [POST]
+ Request
  + Headers
      Content-Type: application/json
      Authorization: Bearer xxxx

  + Body
      {
        "text": "test_tweet"
      }

+ Response 201 (application/json)
  + Body
      {
        "result": true
      }

## tweet詳細 [/tweet/{tweet_id}]
### tweet詳細取得 [GET]
+ Parameters
  + tweet_id: 1458414329 (required) - ツイートID

+ Request
  + Headers
      Content-Type: application/json
      Authorization: Bearer xxxx

+ Response 200 (application/json)
  + Body
      {
        "result": true,
        "tweet_id": 1458414329,
        "user_id": 1,
        "username": "test_user",
        "body": "良い時期にしがらみに負けていると、それが後々おかしなことになる原因となる",
        "created_at": "2016-04-18 00:00:00"
      }

# Group ユーザ
## ユーザ情報 [/user/{userName}]
### ユーザ情報取得 [GET]
+ Parameters
  + userName: CA16Tech (required) - 固有のユーザ名

+ Request
  + Headers
      Content-Type: application/json
      Authorization: Bearer xxxx

+ Response 200 (application/json)
  + Body
      {
        "result": true,
        "user_id": 123,
        "name": "ca_16",
        "screen_name": "CA16Tech",
        "profile_image": "http://nekogazou.com/wp-content/uploads/2013/03/727.jpg",
        "background_image": "http://nekogazou.com/wp-content/uploads/2013/03/top15.jpg",
        "tweets_count": 1234,
        "followers_count": 20,
        "friends_count": 100,
        "favorite_count": 5
      }

## login [/login]
### ログイン [POST]
+ Request
  + Headers
      Content-Type: application/json

  + Body
    {
      "name": "ca_16",
      "password": "Passw0rd"
    }

+ Response 200 (application/json)
  + Body
    {
      "result": true,
      "data": {
        "token": "LbQqzSurrmB1E0g8UpLZ62LxJhgxFdtS"
      }
    }

## ユーザ登録 [/register]
### ユーザ登録 [POST]
+ Request
  + Headers
    Content-Type: application/json

  + Body
    {
      "name": "ca_16",
      "screenName": "CA16Tech",
      "password": "Passw0rd"
    }

+ Response 201 (application/json)
  + Body
    {
      "result": true,
      "data": {
        "token": "LbQqzSurrmB1E0g8UpLZ62LxJhgxFdtS"
      }
    }


## フォロー [/follow]
### フォローする [POST]
+ Request
  + Headers
      Content-Type: application/json
      Authorization: Bearer xxxx

  + body
      {
        "fromUserId": 123456,
        "toUserId": 1245678
      }

+ Response 201 (application/json)
    + Body
    {
      "result": true,
    }

### アンフォローする [DELETE]
+ Request
  + Headers
      Content-Type: application/json
      Authorization: Bearer xxxx

  + body
      {
        "fromUserId": 123456,
        "toUserId": 1245678
      }

+ Response 204
