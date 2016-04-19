<!--ツイート入力フォーム -->
<tweetForm>
    <div class='inputForm' style='text-align:center;'>
        <input class='form-control' type='text' id='tweet' name='tweet' style='width:40%;' maxlength="140" placeholder='今何してる？'>
        <button class='btn' style="margin:10px;" onclick="tweet()">ツイート</button>
    </div>

    <script>
        tweet = function(){
            // console.log(document.getElementsByName('tweet')[0].value);
            var tweet = document.getElementsByName('tweet')[0].value;

            //送信
            request.post(endpoint + '/tweet')
                .send({text: tweet})
                .set('Authorization', 'Bearer ' + Cookies.get('access_token'))
                .set('Content-Type', 'application/json')
                .end(function(err, res) {
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
    </script>

</tweetForm>
