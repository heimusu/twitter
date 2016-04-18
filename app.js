var tagBasePath = __dirname + '/app/tags';

var express = require('express');
var swig = require('swig');
var riot = require('riot');
var request = require('superagent');
//tags
var hello = require(tagBasePath + '/helloWorld.tag');
var topBar = require(tagBasePath + '/topBar.tag');
var tweetForm = require(tagBasePath + '/tweetForm.tag');
var tweet = require(tagBasePath + '/tweet.tag');
var loginForm = require(tagBasePath + '/loginForm.tag');
var signUpForm = require(tagBasePath + '/signUpForm.tag');

var app = express();

app.engine('html', swig.renderFile);

app.set('view engine', 'html');
app.set('views', __dirname + '/views');

app.use('/bower_components',  express.static(__dirname + '/bower_components'));
app.use(express.static(__dirname + '/public'));

app.get('/', function(req,res){
    var startingName = 'Susan';
    var init = 'aaaa';
    var tagTopbar = riot.render(topBar);
    var tagTweetForm = riot.render(tweetForm);
    var tagTweet = riot.render(tweet);
    res.render('index', {tagTopbar:tagTopbar, tagTweetForm:tagTweetForm, tagTweet:tagTweet});
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
})

app.get('/apiblueprint', function(req,res){
    res.render('api.html');
});


app.listen(3000, function(){
    console.log('working!');
});
