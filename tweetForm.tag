<!--ツイート入力フォーム -->
<tweetForm>
    <div style='text-align:center;'>
        <input class='form-control' type='text' name='tweet' style='width:40%;' onclick={validate}>
        <button class='btn' style="margin:10px;">ツイート</button>
        <span class="tooltip" show={ error }>{ error }</span>
    </div>

    <script>
    var self = this;
        validate(){
            console.log(this.tweet.value);
            /*
            request.get('/validate/tweet' + this.tweet.value)
            .fail(function(error_message){
                self.error = error_message;
                self.update();
            })*/
        }
    </script>

</tweetForm>
