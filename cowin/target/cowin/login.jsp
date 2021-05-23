<html>
    <head>
            <title>Registration</title>
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
    </head>
    <style>
    * {
      box-sizing: border-box;
    }
    .bg{
    background-image: url("covidreg.jpg");
     background-position: center;
     background-repeat: no-repeat;
     background-size: cover;
    }
    .bg1{
     background-color:#549ca8;
    }
    .form-control
    {
      width:50%;
      position:relative;
      left: 130px;
    }
    .content {
      border-radius: 10px;
      position: relative;
      left: 460px;
      background: rgba(0, 0, 0, 0.80);
      color: #f1f1f1;
      width: 50%;
      height: 50%;
      padding: 20px;
    }
    .size{
      font-size: 20px;
    }
    input[type=submit],
    input[type=submit]::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
  }
  input[type=submit] {
  background: none;
  border: 3px solid #fff;
  border-radius: 5px;
  color: white;
  display: block;
  font-size: 1.0em;
  font-weight: bold;
  margin: 0.9em auto;
  padding: 1em 2em;
  position: relative;
  text-transform: uppercase;
}

input[type=submit]::before,
input[type=submit]::after {
  background: #fff;
  content: '';
  position: absolute;
  z-index: -1;
}

input[type=submit]:hover {
  color: #8ac3e3;
}
.topnav a {
  float: left;
  color: #f2f2f2;
  background-color:#ccccff;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
  width: 33%;
}

/* Change the color of links on hover */
.topnav a:hover {
  background-color: #ddd;
  color: black;
}

/* Add a color to the active/current link */
.topnav a.active {
  background-color: #04AA6D;
  color: white;
}

    </style>
    <script>
    var a= <%= request.getAttribute("success") %>
    if(a==1)
    {
      alert("Successfully registered");
    }
    </script>
    <body class="bg">
    <div class="topnav">
        <!---<div class="container1 navbg borderXwidth fixed-top">--->
        <a href="registration.jsp">Registration</a>
        <a href="login.jsp">Login</a>
        <a href="./update">Live updation</a>
    </div>
        <br>
        <br>
        <section class="py-5  text-center">
        <div class="container">
        <div class="justify-content-center align-items-center">
        <div class="content bg1" id="intro section">
        <h3 style="text-align:center;color:white;font-weight: bold;">LOGIN</h3><br>
        <form action="./log" method="POST" autocomplete="off">
        <label for="aadh" class="size">Aadhar ID</label><br>
        <input type="text" class="form-control" id="1" name="aadh" placeholder="Aadhar ID">
        <br>
        <input type="Submit" class="btn-5" name="Submit" id="Submit" value="Submit">
        </form>
        </div>
        </div>
        </div>
        </section>
       <div class="footer">
            <p style="color:white;text-align:right;padding-right:20px;">&#169; Vellore Instutide of Technology, Chennai</p>
        </div>
    </body>
</html>