<html>

<head>
    <title>Covid-19</title>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css">
    <!-- Google Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap">
    <!-- Bootstrap core CSS -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Material Design Bootstrap -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.0/css/mdb.min.css" rel="stylesheet">

    <!-- JQuery -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.4/umd/popper.min.js"></script>
    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.19.0/js/mdb.min.js"></script>
    <noscript>Sorry but your browser don't support this document</noscript>

    <!--font-->
    <link href='https://fonts.googleapis.com/css?family=Raleway:800' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Lora:400italic' rel='stylesheet' type='text/css'>
</head>
<style>
    @import 'https://fonts.googleapis.com/css?family=Raleway';
    @import url('https://fonts.googleapis.com/css?family=Source+Sans+Pro');
    html,
    body,
    header,
    #intro-section {
        height: 100%;
        position: relative;
    }
    
    * {
        box-sizing: border-box;
    }
    
    .bg {
        height: 100%;
        width: 100%;
        background-position: center;
        background-repeat: no-repeat;
        background-size: cover;
        position: relative;
        display: flex;
        align-items: center;
        justify-content: center;
    }
    
    .bg::before {
        content: "";
        background-image: url("covid.png");
        background-size: cover;
        position: absolute;
        top: 0px;
        right: 0px;
        bottom: 0px;
        left: 0px;
        opacity: 0.7;
    }
    
    div.container1 {
        font-family: Raleway;
        padding: 1em;
    }
    
    div.container1 a {
        color: #FFF;
        text-decoration: none;
        font: 15px Raleway;
        margin: 0px 10px;
        padding: 10px 10px;
        position: relative;
        z-index: 0;
        cursor: pointer;
    }
    
    .navbg {
        background: #b32400
    }
    
    div.borderXwidth a:before,
    div.borderXwidth a:after {
        position: absolute;
        opacity: 0;
        width: 0%;
        height: 2px;
        content: '';
        background: #FFF;
        transition: all 0.3s;
    }
    
    div.borderXwidth a:before {
        left: 0px;
        top: 0px;
    }
    
    div.borderXwidth a:after {
        right: 0px;
        bottom: 0px;
    }
    
    div.borderXwidth a:hover:before,
    div.borderXwidth a:hover:after {
        opacity: 1;
        width: 100%;
    }
    
    .page-footer {
        left: 0;
        bottom: 0;
        width: 100%;
        height: 16%;
        background-color:#b32400;
    }
    
    .content {
        border-radius: 25px;
        background: rgba(0, 0, 0, 0.80);
        color: #f1f1f1;
        width: 65%;
        height: 50%;
        padding: 20px;
    }
    
    h1 {
        position: relative;
        color: white;
        font-size: bold;
        text-align: center;
    }
    
    .nf-r1 {
        font-size: 1.5em;
        font-style: normal;
        font-weight: 800;
        line-height: 1.2em;
        position: relative;
        left: 50px;
        display: inline-block;
        margin-bottom: 2em;
    }
    
    .nf-r1::after {
        content: '';
        position: absolute;
        height: 1px;
        width: 20%;
        bottom: -0.5em;
        right: 0;
        left: 0;
        margin: 0 auto;
        background-color: #000;
    }
    
    .nf-r2 {
        font-family: Lora, serif;
        font-size: 8em;
        line-height: 1em;
        font-weight: 300;
        font-style: italic;
    }
</style>

<body>
    <div class="container1 navbg borderXwidth fixed-top">
        <a href="registration.jsp">Registration</a>
        <a href="login.jsp">Login</a>
        <a href="./update">Live updation</a>
    </div>
    <main>
        <section>
            <div class="view" id="intro-section">
                <div class="bg" id="intro-section">
                    <div class="container content">
                        <h1 class="nf-r1">Let's stand together and fight covid-19 Corona virus!</h1>
                        <h1 class="nf-r2">Covid-Vaxin</h1>
                    </div>
                </div>
            </div>
        </section>
    </main>

    <footer class="page-footer font-md py-3" id="contact">
        <div class="container">

            <p style="color:white;text-align:center;">&#169; Vellore Instutide of Technology, Chennai</p>
        </div>
    </footer>


</body>

</html>