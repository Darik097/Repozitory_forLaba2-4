% rebase('layout.tpl', title='Home Page', year=year)


<div class="jumbotron">
    <img src = "static/images/logo_nav.png">
    <p></p>
    <p class="lead">Bottle is a free web framework for building great Web sites and Web applications using HTML, CSS and JavaScript.</p>
    <p><a href="http://bottlepy.org/docs/dev/index.html" class="btn btn-primary btn-large">Learn more &raquo;</a></p>
</div>

<div class="row">
    <div class="col-md-4">
        <h2>Getting started</h2>
        <p>
            Bottle gives you a powerful, patterns-based way to build dynamic websites that
            enables a clean separation of concerns and gives you full control over markup
            for enjoyable, agile development.
        </p>
        <p><a class="btn btn-default" href="http://bottlepy.org/docs/dev/index.html">Learn more &raquo;</a></p>
    </div>
    <div class="col-md-4">
        <h2>Get more libraries</h2>
        <p>The Python Package Index is a repository of software for the Python programming language.</p>
        <p><a class="btn btn-default" href="https://pypi.python.org/pypi">Learn more &raquo;</a></p>
    </div>

    <div class="col-md-4">
        <h2>Microsoft Azure</h2>
        <p>You can easily publish to Microsoft Azure using Visual Studio. Find out how you can host your application using a free trial today.</p>
        <p><a class="btn btn-default" href="http://azure.microsoft.com">Learn more &raquo;</a></p>
    </div>

   <div style="display: inline-block; vertical-align: top;">
       <h3> Ask a Question</h3>
           <form action="/home" method="post" onsubmit="return validateForm()">
                <p><textarea id="questionInput" rows="2" cols="50" name="QUEST" placeholder="Your question" style="resize: none;" ></textarea></p>
                <p><input id="nameInput" autocomplete="off" type="text" cols="50" name="NAME" placeholder="Your name" pattern="[A-Za-z\s]+" oninvalid="this.setCustomValidity('Please enter only Latin letters and spaces')" title="Format: Latin characters and spaces" oninput="this.setCustomValidity('')"></p>
                <p><input id="emailInput" autocomplete="off" type="text" cols="50" name="ADRESS" placeholder="Your email" oninvalid="this.setCustomValidity('Invalid email address')" pattern="[a-zA-Z.\-_]{3,20}@[a-zA-Z]{3,10}(\.{1}[a-z]{2,5}){1,5}" oninvalid="this.setCustomValidity('')" title="Invalid email address" oninput="this.setCustomValidity('')"></p>
                <p><input type="submit" value="Send" class="btn btn-default"></p>
           </form>
   </div>

    
   <script>

        function validateForm(){
            var questionValue = document.getElementById('questionInput').value;
            var nameValue = document.getElementById('nameInput').value;
            var emailValue = document.getElementById('emailInput').value;
            if(questionValue.trim()===''){
                alert('Please ask your question');
                return false;
            }

            if(nameValue.trim()===''){
                alert('Please fill in the name field');
                return false;
            }

            if(emailValue.trim()===''){
                alert('Please fill in the email field');
                return false;
            }
            return true;
        }

   </script>


</div>
