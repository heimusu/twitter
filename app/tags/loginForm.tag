<loginForm>
    <div class='inputForm' style='text-align:center;'>
        <input class='form-control' type='text' name='username' id='username' style='width:20%; margin:10px;' placeholder='ユーザーネーム'>
        <input class='form-control' type='text' name='password' id='password' style='width:20%; margin:10px;' placeholder='パスワード'>
        <button class='btn' style="margin:10px;" onclick="loginButton()">ログイン</button>
    </div>

    <script>
        loginButton = function () {
            var username = document.getElementsByName('username')[0].value;
            var password = document.getElementsByName('password')[0].value;

            request.post('http://localhost:4000/login').send({name: username, password: password}).set('Content-Type', 'application/json').end(function(err, res) {
                if (err || !res.ok) {
                    alert('Oh no! error');
                } else {
                    console.log(res.body);
                    console.log(res.body.data.token);
                }
            });

        }
    </script>
</loginForm>
