<tweet>
    <div class='row'>
        <div class='col md-2 profile_wrapper radius-10' style='background-color:#EEEEEE;'>
            <p><h5>UserName</h5></p>
            <p><h6>UserId</h6></p>
        </div>
        <div class='col md-9'>
            <ul class='tweet_ul'>
                <li class='tweet_li radius-10'  each='{opts.data}' onclick="{loadTweet}">
                    <!-- <p style='float:left;'>{number}</p> -->
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
        this.list = [
            {  "number" : "1",  "user_id" : "1",  "tweet" : "良い時期にしがらみに負けていると、それが後々おかしなことになる原因となる",  "tweet_id" : "1458414329",  },
            {  "number" : "2",  "user_id" : "1",  "tweet" : "なんで眼帯してると誇らしげなの？",  "tweet_id" : "1437678435",  },
            {  "number" : "3",  "user_id" : "1",  "tweet" : "「貧すれば鈍する」は時間に追われているマネジメントが意識すべき言葉。",  "tweet_id" : "1421320084",  },
            {  "number" : "4",  "user_id" : "1",  "tweet" : "わざと転ぶなよ",  "tweet_id" : "1432645800",  },
            {  "number" : "5",  "user_id" : "1",  "tweet" : "「アイムチキン」チキンを注文するときに飛び出した珍言 by長嶋茂雄名言",  "tweet_id" : "1429671337",  },
            {  "number" : "6",  "user_id" : "1",  "tweet" : "仕事で出来なかった理由を伝えるとき、相手に「説明」と捉えられるか「言い訳」と捉えられるかの違いは、「全て自分の責任」という覚悟が決まってるかどうかだと思います。",  "tweet_id" : "1433283431",  },
            {  "number" : "7",  "user_id" : "1",  "tweet" : "ＴＶ吹き替え洋画を見て「最近の外人さんは、みんな日本語上手だねえ」byガッツ石松",  "tweet_id" : "1434950469",  },
            {  "number" : "8",  "user_id" : "1",  "tweet" : "ロケットえんぴつ。",  "tweet_id" : "1447672508",  },
            {  "number" : "9",  "user_id" : "1",  "tweet" : "スマートフォンが出てきて、我々にもチャンスはあると思っています。また新しい「よーい、ドン」が始まったんです。我々はこの２年で、会社をスマートフォン企業に入れ替えました。いま年商１６００億のうちの１０００億はスマートフォン。そこでトップになれる可能性があるなと。",  "tweet_id" : "1431887245",  },
            {  "number" : "10",  "user_id" : "1",  "tweet" : "人生はクローズアップで見れば悲劇　ロングショットで見れば喜劇 byチャーリー・チャップリン",  "tweet_id" : "1431668630",  },
        ];
        // console.log(opts.data);
    </script>
</tweet>
