var express = require('express');
var swig = require('swig');
var riot = require('riot');
var request = require('superagent');
//tags
var hello = require('./helloWorld.tag');
var topBar = require('./topBar.tag');
var tweetForm = require('./tweetForm.tag');
var tweet = require('./tweet.tag');

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
    //var tagOutput = riot.render(hello, {firstName:startingName, init:init});
    //res.render("index", {tagContent:tagOutput, firstName: startingName, init: init});
});

app.listen(3000,function(){
    console.log('working!');
});
