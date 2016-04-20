<tUserInfo>
    <div class='col md-1'></div>
    <div class='col md-3 profile_wrapper radius-10' style='margin-top:60px; margin-left:-100px;'>
        <div class='imgCenter'>
            <img class='profImage' src={opts.data.profile_image} style='padding-top:20px; margin-left:5px;'>
        </div>
        <h4 style='text-align:center;'>@{opts.data.name}</h4>
        <h5 style='text-align:center;'>{opts.data.screen_name}</h5>
        <ul style='text-align:center; list-style-type: none;'>
            <li style='display: block;'>tweets:{opts.data.tweets_count}</li>
            <li style='display: block;'>follow:{opts.data.friends_count}</li>
            <li style='display: block;'>follower:{opts.data.followers_count}</li>
            <li style='display: block;'>favorite:{opts.data.favorite_count}</li>
        </ul>
    </div>

    <style>
        .profile_wrapper {
            text-align: center;
            background-color: #FFFFFF;
            box-shadow: 1px 1px 1px 1px;
        }
        /*.imgCenter:before {
            content: "";
            position: relative;
            left: 0;
            right: 0;
            z-index: -1;

            display: block;
            background-image: url('http://666a658c624a3c03a6b2-25cda059d975d2f318c03e90bcf17c40.r92.cf1.rackcdn.com/unsplash_527bf56961712_1.JPG');
            width: 100%;
            height: 100%;
        }*/

        .profImage {
            width: 300px;
            border-radius: 50%;
            -webkit-border-radius: 50%;
            -moz-border-radius: 50%;
        }
        .imgCenter {
            text-align: center;
        }
        .blur {
            background-image: url("{opts.data.background_image}");
            filter:blur(5px);
            -webkit-filter: blur(5px);
            -moz-filter: blur(5px);
        }

    </style>
</tUserInfo>
