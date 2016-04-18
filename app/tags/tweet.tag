<tweet>
    <div class='row'>
        <div class='col md-2 profile_wrapper radius-10' style='background-color:#EEEEEE;'>
            <p><h5>UserName</h5></p>
            <p><h6>UserId</h6></p>
        </div>
        <div class='col md-9'>
            <ul class='tweet_ul'>
                <li class='tweet_li radius-10'  each='{opts.data}' onclick="{loadTweet}">
                    <p>{username}</p>
                    <!--
                    <p  style='text-align:center;'>{tweet}</p>
                    -->
                    <p style="text-align:left;">{body}</p>
                </li>
            </ul>
        </div>
    </div>

    <style>
        .tweet_ul{
            list-style-type: none;
        }

        .tweet_li{
            display: block;
            border-bottom:solid;
            margin:5px;
            border-bottom-style: outset;
        }
        .tweet_li:hover{
            background-color: #EEEEEE;
        }
        .profile_wrapper{
            background-color: #FFFFFF;
            /*box-shadow: 1px 1px 1px 1px;*/
        }
    </style>
    <script>
        // filter(item){
        //     created_at
        // }
    </script>
</tweet>
