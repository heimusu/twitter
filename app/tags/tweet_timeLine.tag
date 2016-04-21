<timeline>
    <div class='col md-8'>
        <tweetForm></tweetForm>
        <ul class='tweet_ul'>
            <li class='tweet_li radius-10' each='{opts.data}'>
                <p>
                    <span style="margin-right:5px; font-size:140%;">{name}</span><span style="font-size:110%;">@{user_id}</span>
                </p>
                <p style="text-align:left;">
                    <h5>{body}</h5>
                </p>
                <div style="text-align:left;">
                    <a class="btn btn-empty" style="padding:4px 30px; min-width:70px; margin-right:5px;"><span class="icon-star"></span></a>
                    <a class="btn btn-empty" style="padding:4px 30px; min-width:70px; margin-right:5px;"><span class='icon-refresh-2'></span></a>
                    <a class="btn btn-empty" style="padding:4px 30px; min-width:70px; margin-right:5px;"><span class='icon-close'></span></a>
                </div>
            </li>
        </ul>
    </div>

    <!-- <script>
        favorite = function()
    </script> -->
</timeline>
