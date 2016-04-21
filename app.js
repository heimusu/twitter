var tagBasePath = __dirname + '/app/tags';

var express = require('express');
var swig = require('swig');
var riot = require('riot');
//var request = require('superagent');
var agent = require('request');
//tags
var hello = require(tagBasePath + '/helloWorld.tag');
var topBar = require(tagBasePath + '/topBar.tag');
var tweetForm = require(tagBasePath + '/tweetForm.tag');
var tweet = require(tagBasePath + '/tweet.tag');
var tUserInfo = require(tagBasePath + '/tweet_userInfo.tag');
var timeLine = require(tagBasePath + '/tweet_timeLine.tag');
var loginForm = require(tagBasePath + '/loginForm.tag');
var signUpForm = require(tagBasePath + '/signUpForm.tag');

var app = express();

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
    var cookie = req.headers.cookie;
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookie
    }

    var options = {
      //url: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
      url:'http://localhost:4000/',
      method:'GET',
      headers:headers,
      json: true
    };

    agent.get(options, function(error, response, body){
      if (!error && response.statusCode == 200) {
        res.json(body);
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
    //   uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
      url:'http://localhost:4000/register',
      method:'POST',
      headers:headers,
      json: true,
      body: JSON.stringify({
          name:'test',
          password:'testtesttest',
          screenName:'test'
      })
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
    var cookie = req.headers.cookie;
    //通信部
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookie
    };
    var options = {
    //   uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
      url:'http://localhost:4000/follow',
      method:'POST',
      headers:headers,
      json: true,
      body: JSON.stringify({
          fromUserId:'123456',
          toUserId:'1245678'
      })
    };

    agent.get(options, function(error, response, body){
      if (!error && response.statusCode == 201) {
        res.json(body);
        res.end();
      } else {
        console.log('error: '+ response.statusCode);
        console.log(response);
      }
    });
});

//ツイート
app.post('/postTweet', function(req, res){
    var cookie = req.headers.cookie;
    //通信部
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookie
    };
    var options = {
    //   uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
      url:'http://localhost:4000/tweet',
      method:'POST',
      headers:headers,
      json: true,
      body: JSON.stringify({
          text:'test_tweet'
      })
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

//ユーザー情報ゲット
app.get('/getUser', function(req, res){
    //通信部
    var cookie = req.headers.cookie;
    var headers = {
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ' + cookie
    }
    var userName = 'CA16Tech';
    var options = {
    //   uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
      url:'http://localhost:4000/user/'+userName ,
      method:'GET',
      headers:headers,
      json: true
    };

    agent.get(options, function(error, response, body){
      if (!error && response.statusCode == 200) {
        res.json(body);
      } else {
        console.log('error: '+ response.statusCode);
        console.log(response);
      }
    });
});

//ツイート
app.post('/userLogin', function(req, res){
    //通信部
    var headers = {
        'Content-Type': 'application/json',
    };
    var options = {
    //   uri: 'http://teamg-twitter-elb-1649660177.ap-northeast-1.elb.amazonaws.com/',
      url:'http://localhost:4000/login',
      method:'POST',
      headers:headers,
      json: true,
      body: JSON.stringify({
          name:'name',
          password:'password'
      })
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
