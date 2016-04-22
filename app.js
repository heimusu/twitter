var tagBasePath = __dirname + '/app/tags';

var express = require('express');
var swig = require('swig');
var riot = require('riot');
//var request = require('superagent');
var agent = require('request');
var bodyParser = require('body-parser');
var cookieParser = require('cookie-parser');
var cookie = require('cookie');
//tags
var hello = require(tagBasePath + '/helloWorld.tag');
var topBar = require(tagBasePath + '/topBar.tag');
var tweetForm = require(tagBasePath + '/tweetForm.tag');
var tweet = require(tagBasePath + '/tweet.tag');
var tUserInfo = require(tagBasePath + '/tweet_userInfo.tag');
var timeLine = require(tagBasePath + '/tweet_timeLine.tag');
var loginForm = require(tagBasePath + '/loginForm.tag');
var signUpForm = require(tagBasePath + '/signUpForm.tag');

var corser = require("corser");

var app = express();

app.use(bodyParser.json());
app.use(cookieParser());
app.use(corser.create());
app.engine('html', swig.renderFile);

app.set('view engine', 'html');
app.set('views', __dirname + '/views');

app.use('/bower_components',  express.static(__dirname + '/bower_components'));
app.use(express.static(__dirname + '/public'));

app.get('/', function(req,res){
    var tagTopbar = riot.render(topBar);
    var tagTweetForm = riot.render(tweetForm);
    var tagTweet = riot.render(tweet);
    var tag_tUserInfo = riot.render(tUserInfo);
    var tag_timeLine = riot.render(timeLine);
    res.render('index', {tagTopbar:tagTopbar, tagTweetForm:tagTweetForm, tagTweet:tagTweet, tag_tUserInfo: tag_tUserInfo, tag_timeLine: tag_timeLine});
});

app.get('/login', function(req, res){
    var tagTopbar = riot.render(topBar);
    var tagLoginForm = riot.render(loginForm);
    res.render('login', {tagTopBar:tagTopbar, tagLoginForm:tagLoginForm});
});

app.get('/signup', function(req, res){
    var tagTopBar = riot.render(topBar);
    var tagSignUpForm = riot.render(signUpForm);
    res.render('signup', {tagTopBar:tagTopBar, tagSignUpForm:tagSignUpForm});
});

app.get('/user', function(req, res){
    var tagTopBar = riot.render(topBar);
    res.render('user', {tagTopBar: tagTopBar});
});

app.get('/apiblueprint', function(req,res){
    res.render('api.html');
});


//TLゲット
app.get('/getTweet', function(req, res){
    //通信部
    var cookies= cookie.parse(req.headers.cookie);
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookies.access_token
    }

    if(req.headers.userId != undefined){
        var options = {
          url: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
          //url:'http://localhost:4000/',
          method:'GET',
          headers:headers,
          json: true
        };
    }
    else{
        var options = {
          url: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
          //url:'http://localhost:4000/',
          method:'GET',
          headers:headers,
          json: true
        };
    }
    console.dir(headers);

    agent.get(options, function(error, response, body){
      if (!error && response.statusCode == 200) {
        console.log('timeline load success!');
        res.json(body);
        res.end();
      } else {
        console.log('error: '+ response.statusCode);
        console.log(response);
      }
    });
});

//新規登録
app.post('/postRegister', function(req, res){
    //通信部
    var headers = {
        'Content-Type': 'application/json'
    };
    var options = {
      uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/register',
      //url:'http://localhost:4000/register',
      method:'POST',
      headers:headers,
      json: true,
      body: req.body
    };

    agent.post(options, function(error, response, body){
      if (!error && response.statusCode == 201) {
        res.json(body);
      } else {
        console.log('error: '+ response.statusCode);
        console.log(response);
      }
    });
});

//フォロー
app.post('/postFollow', function(req, res){
    var cookies= cookie.parse(req.headers.cookie);
    // console.dir(req.body);
    var to_user_id = parseInt(req.body.to_user_id,10);
    //通信部
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookies.access_token
    };
    var options = {
      uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/follow',
      //url:'http://localhost:4000/follow',
      method:'POST',
      headers:headers,
      json: true,
      body: {to_user_id: to_user_id}
    };

    agent.post(options, function(error, response, body){
      if (!error && response.statusCode == 201) {
        res.json(body);
        res.end();
      } else {
        console.log('error: '+ response.statusCode);
        //console.log(response);
      }
    });
});

//ツイート
app.post('/postTweet', function(req, res){
    var cookies= cookie.parse(req.headers.cookie);
    console.dir(headers);
    //通信部
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookies.access_token
    };

    var options = {
      uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/tweet',
    //   url:'http://localhost:4000/tweet',
      method:'POST',
      headers:headers,
      json: true,
      body: req.body
    };
    console.dir(headers);
    agent.post(options, function(error, response, body){
      if (!error && response.statusCode == 201) {
        res.json(body);
      } else {
        console.log('error: '+ response.statusCode);
        console.log(response);
      }
    });
});

//ユーザー情報ゲット
app.get('/getUser', function(req, res){
    var cookies= cookie.parse(req.headers.cookie);
    // console.dir(req.body);
    var userId = req.headers.userid;
    //通信部
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookies.access_token
    }

    if(userId != undefined){
        var options = {
          uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/user/' + userId,
        //   url:'http://localhost:4000/user/'+userName ,
          method:'GET',
          headers:headers,
          json: true
        };
    }

    else{
        var options = {
          uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/user/',
          method:'GET',
          headers:headers,
          json: true
        };
    }

    agent.get(options, function(error, response, body){
      if (!error && response.statusCode == 200) {
        res.json(body);
      } else {
        console.log('error: '+ response.statusCode);
        //console.log(response);
      }
    });
});

//ログイン
app.post('/userLogin', function(req, res){
    //通信部
    var headers = {
        'Content-Type': 'application/json',
    };
    var options = {
      uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/login',
    //   url:'http://localhost:4000/login',
      method:'POST',
      headers:headers,
      json: true,
      body: req.body
    };

    agent.post(options, function(error, response, body){
      if (!error && response.statusCode == 200) {
        res.json(body);
      } else {
        console.log('error: '+ response.statusCode);
        console.log(response);
      }
    });
});

app.listen(3000, function(){
    console.log('working!');
});
