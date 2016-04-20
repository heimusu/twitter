<tUserInfo>
    <div class='col md-3 profile_wrapper radius-10' style='background-color:#EEEEEE;'>
        <img src={opts.data.profile_image} style='padding-top:10px; margin-left:5px;'>
        <h4 style='text-align:center;'>@{opts.data.name}</h4>
        <h5 style='text-align:center;'>{opts.data.screen_name}</h5>
        <ul style='text-align:center; list-style-type: none;'>
            <li style='display: block;'>tweets:{opts.data.tweets_count}</li>
            <li style='display: block;'>follow:{opts.data.friends_count}</li>
            <li style='display: block;'>follower:{opts.data.followers_count}</li>
            <li style='display: block;'>favorite:{opts.data.favorite_count}</li>
        </ul>
    </div>
</tUserInfo>
