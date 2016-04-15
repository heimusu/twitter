<!--ツイート入力フォーム -->
<tweetForm>
    <div class='inputForm' style='text-align:center;'>
        <input class='form-control' type='text' name='tweet' style='width:40%;' maxlength="140" placeholder='今何してる？' onblur={validate}>
        <button class='btn' style="margin:10px;">ツイート</button>
    </div>

    <script>
        validate(){
            if(this.tweet.value.length >= 140){
                alert('over 140 characters!');
            }
        }
    </script>

</tweetForm>
