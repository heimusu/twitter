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
          }
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

## login [/login]
### user login [POST]

+ Parameters
    + name(string) - user name
    + password(string) - user password

+ Request 200 (application/json)

    + Body
        {
            "name": "string",
            "password": "string"
        }


+ Response 200 (application/json)

    + Body
        {
            "result":[
                "data":[
                    "token": string
                ]
            ]
        }

## register [/register]
### new user create [POST]

+ Parameters
    + name(string) - user name
    + password(string) - user password
    + screenname(string) - user screenname

+ Request 200 (application/json)

    + Body
        {
            "name": "string",
            "password": "string"
            "screenname": "string"
        }


+ Response 200 (application/json)

    + Body
        {
            "result":[
                "data":[
                    "token": string
                ]
            ]
        }

## timeline [/]
### get timeline [GET]

+ Parameters
    + token(string) - user token

+ Request 200 (application/json)

    + Body
    {
        "token": "string",
    }


+ Response 200 (application/json)

    + Body
    {
        "result":[
            "data":[
                "tweet_id": string,
                "user_id": string,
                "username": string,
                "text": string,
                "retweet": string,
                "photos": string,
                "mentionUserId": string,
                "mentionTweetid": string,
                "time": string
                ]
        ]
    }

## follow [/follow]
### create following relation[POST]

+ Parameters
    + token(string) - access token
    + userId(string) - userId

+ Response 200 (application/json)

    + Body
    {
        "result":[
        ]
    }
