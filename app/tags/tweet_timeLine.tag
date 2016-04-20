<timeline>
    <div class='col md-9'>
        <ul class='tweet_ul'>
            <li class='tweet_li radius-10' each='{opts.data}' onclick="{loadTweet}">
                <p>{username}</p>
                <p style="text-align:left;">{body}</p>
            </li>
        </ul>
    </div>
</timeline>
