
riot.tag2('tweetform', '<div style="text-align:center;"><input class="form-control" type="text" name="tweet" style="width:40%;" onclick="{validate}"><button class="btn" style="margin:10px;">ツイート</button><span class="tooltip" show="{error}">{error}</span></div>', '', '', function(opts) {
    var self = this;
        this.validate = function(){
            console.log(this.tweet.value);

        }.bind(this)
});
