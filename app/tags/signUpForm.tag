<signUpForm>
    <div class='inputForm' style='text-align:center;'>
        <input class='form-control' type='text' name='username' id='username' style='width:20%; margin:10px;' placeholder='ユーザーネーム'>
        <input class='form-control' type='password' name='password' id='password' style='width:20%; margin:10px;' placeholder='パスワード'>
        <input class='form-control' type='text' name='screenname' id='screenname' style='width:20%; margin:10px;' placeholder='ニックネーム'>
        <button class='btn' style="margin:10px;" onclick="signUpButton()">SignUp</button>
    </div>

    <script>
        signUpButton = function () {
            //ユーザー名とパスワードの取得
            var username = document.getElementsByName('username')[0].value;
            var password = document.getElementsByName('password')[0].value;
            var screenname = document.getElementsByName('screenname')[0].value;

            //送信
            request.post(endpoint + '/register')
                .send({name: username, password: password, screenName: screenname})
                .set('Content-Type', 'application/json')
                .end(function(err, res) {
                    if (err) {
                        alert('Oh no! error');
                    } else {
                        Cookies.set('access_token', res.body.data.token);
                        window.location.href = '/';
                    }
                });
        }
    </script>
</signUpForm>