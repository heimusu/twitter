<userInfo>
    <div class='row'>
        <div class='col md-3' style="margin-top: 20px; display: block;border:solid;">
            <p>userIcon</p>
            <p>userId</p>
            <p>userScreenName</p>
        </div>
        <div class='col md-9' style='margin-top: 20px; background-color: #EEEEEE;'>
            <span>userTweetCount</span>
            <span>userFollowingCount</span>
            <span>userFollowedCount</span>
            <span>userLikeCount</span>
            <button class='btn' style="margin:10px;" onclick="follow()">フォローする</button>

        </div>

        <script>
            follow = function () {
                console.log(opts.data);
                this.fromUserId = 123456; //ログインしているユーザーを取得する操作が必要
                this.toUserId = opts.data.user_id;
                request.post(endpoint + '/follow')
                    .send({fromUserId: this.fromUserId, toUserId: this.toUserId})
                    .set('Content-Type', 'application/json')
                    .set('Authorization', 'Bearer ' + Cookies.get('access_token'))
                    .end(function (err, res) {
                    if (err) {
                        alert('Oh no! error');
                        console.log(err);
                        console.log(res);
                        // else if(セッション認証切れ){
                        //     alert('セッションが期限切れです');
                        //     Cookies.expire('access_token');
                        //     window.location.href('/login');
                        // }
                    } else {
                        alert('following now!');
                        // location.reload();
                    }
                });
            }
        </script>
</userInfo>
