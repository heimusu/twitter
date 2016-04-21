<timeline>
    <div class='col md-8'>
        <tweetForm></tweetForm>
        <ul class='tweet_ul'>
            <li class='tweet_li radius-10' each='{opts.data}'>
                <p><span>{username}</span><span>@{user_id}</span></p>
                <p style="text-align:left;">
                    {body}
                    <span><span class="icon-star"></span></span>
                    <span><span class='icon-refresh-2'></span></span>
                </p>
            </li>
        </ul>
    </div>

    <!-- <script>
        favorite = function()
    </script> -->
</timeline>
