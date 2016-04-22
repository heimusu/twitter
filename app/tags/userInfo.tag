<userInfo>
    <div class='row'>
        <div class='col md-3 profile_wrapper' style="margin-top: 60px;">
            <img src={opts.data.profile_image} style='padding-top:10px; margin-left:5px;'>
            <h3 style='text-align:center;'>@{opts.data.name}</h3>
            <h4 style='text-align:center;'>{opts.data.screen_name}</h4>
            <ul style='text-align:center; list-style-type: none;'>
                <li style='display: block;'>tweets:{opts.data.tweets_count}</li>
                <li style='display: block;'>follow:{opts.data.friends_count}</li>
                <li style='display: block;'>follower:{opts.data.followers_count}</li>
                <li style='display: block;'>favorite:{opts.data.favorite_count}</li>
            </ul>
            <div class='button_wrapper' show={!opts.data.is_follow}>
                <button class='btn' style="margin:10px;" onclick="follow()">フォロー</button>
            </div>
        </div>
        <!-- ユーザーのツイートを表示 -->
        <userTweets></userTweets>
    </div>

    <script>
        follow = function () {
            var toUserId = opts.data.id;
            request.post(endpoint + '/postFollow')
                .send({to_user_id: toUserId})
                .set('Content-Type', 'application/json')
                .set('Authorization', 'Bearer ' + Cookies.get('access_token'))
                .end(function (err, res) {
                if (err) {
                    alert('Oh no! error');
                }
                // else if(セッション認証切れ){
                //     alert('セッションが期限切れです');
                //     Cookies.expire('access_token');
                //     window.location.href('/login');
                // }
                else {
                    console.log('success!');
                    //location.reload();
                }
            });
        }

        unFollow = function () {
            this.toUserId = opts.data.user_id;
            request.del(endpoint + '/follow')
                .send({toUserId: this.toUserId})
                .set('Content-Type', 'application/json')
                .set('Authorization', 'Bearer ' + Cookies.get('access_token'))
                .end(function (err, res) {
                if (err) {
                    alert('Oh no! error');
                }
                // else if(セッション認証切れ){
                //     alert('セッションが期限切れです');
                //     Cookies.expire('access_token');
                //     window.location.href('/login');
                // }
                else {
                    location.reload();
                }
            });
        }

        //ユーザーのツイートを取得，userTweetsコンポーネントに渡す
        request.get(endpoint + '/getTweet')
            .set('Content-Type', 'application/json')
            .set('Authorization', 'Bearer ' + Cookies.get('access_token'))
            .set('userId', location.search.substring(1).split('=')[1])
            .end(function(err, res) {
                var data = res.body.tweets;
                riot.mount('userTweets', {
                    data: data
                });
            });
    </script>
    <style>
        .profile_wrapper{
            background-color: #FFFFFF;
            box-shadow: 1px 1px 1px 1px;
        }
        .button_wrapper{
            text-align:center;
        }
    </style>
</userInfo>
