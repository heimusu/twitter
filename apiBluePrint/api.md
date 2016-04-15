#Twitter api
Twitter api

## tweet [/tweet]

### Create tweet [POST]

+ Parameters
    + text(string) - tweet text
    + token(string) - header


+ Request 200(application/json)

    + Body
        {
            "text": "string",
            "token": "string"
        }


+ Response 200 (application/json)

    + Headers
        + Accept: application/json

    + Body
        {
            "result":[
                "data":[
                    "text": string
                ]
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
