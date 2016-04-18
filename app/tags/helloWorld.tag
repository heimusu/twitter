<helloWorld>
    <h2>Hello, {opts.firstName}!</h2>
    <input type='text' name='fName'>
    <button onclick="{updateName}">Update name</button>
    <button onclick="{getAjax}">get Ajax</button>
    <h2>{opts.init}</h2>

    <script>
        updateName(){
            opts.firstName = this.fName.value;
        }
    </script>

    <script>
        getAjax(){
            var self = this;
            request.get('https://api.github.com/users/heimusu').end(function(err,res){
                self.name = res.body.name;
                this.name = self.name;
            });
            opts.init = name;
        }
    </script>

</helloWorld>
