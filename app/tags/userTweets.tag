<userTweets>
    <div class='row'>
        <div class='col md-3'></div>
        <div class='col md-6'>
            <ul class='tweet_ul'>
                <li class='tweet_li radius-10'  each='{opts.data}'>
                    <p>{username}</p>
                    <!--
                    <p  style='text-align:center;'>{tweet}</p>
                    -->
                    <p style="text-align:left;">{body}</p>
                </li>
            </ul>
        <div>
        <div class='col md-3'></div>
    </div>
</userTweets>
