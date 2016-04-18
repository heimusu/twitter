<topBar>
    <style>
        .top_ul {
            list-style-type: none;
            list-style-position: outside;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #FFFFFF;
            box-shadow: 1px 1px 1px 1px;
        }

        .top_li {
            float: left;
            display:block;
        }

        .top_li a {
            display: block;
            color: black;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Change the link color to #111 (black) on hover */
        .top_li a:hover {
            background-color: #EEEEEE;
        }

    </style>

    <!-- navigation bar -->
    <ul class='top_ul'>
        <li class='top_li'>
            <a class='active' href='/'>
                <span class="icon-home" style='margin:5px;'>home</span>
            </a>
        </li>
        <!-- DMボタン -->
        <!--
        <li class='top_li'>
            <a href=''>
                <span class='icon-mail' style='margin:5px;'>DM</span>
            </a>
        </li>
        -->
        <li class='top_li'>
            <a href=''>
                <span class='icon-settings' style='margin:5px;'>Setting</span>
            </a>
        </li>
        <!-- 検索フォーム -->
        <!--
        <li style='display:block; text-align:right;'>
            <input class='form-control' type='text' style='width:20%;'>
            <button class='btn' style="margin:10px;">検索</button>
        </li>
        -->
    </ul>


</topBar>
