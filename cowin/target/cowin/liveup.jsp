<html>

<head>
<%@ page import="java.util.*,java.lang.*" %>
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
     button,input[type=submit],
    input[type=submit]::after {
  -webkit-transition: all 0.3s;
	-moz-transition: all 0.3s;
  -o-transition: all 0.3s;
	transition: all 0.3s;
  }
  button,input[type=submit] {
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

button,input[type=submit]::before,
input[type=submit]::after,
input[type=date]::after,
input[type=date]::before, {
  background: #fff;
  content: '';
  position: absolute;
  z-index: 5;
}   
    #intro-section {
        position: relative;
        height: 100%;
    }
    
    * {
        box-sizing: border-box;
    }
    
    .bg {
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
        background-image: url("bookingco.jpg");
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
        background: #87CEEB
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
        opacity: 0.6;
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
        position:absolute;
        top:25%;
        color: #f1f1f1;
        width: 65%;
        /*height: 50%;*/
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
    .form-control
    {
      width:50%;
      position:relative;
      left: 130px;
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
    .size{
      font-size: 20px;
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
#vax {
  font-family: Arial, Helvetica, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

#vax td, #vax th {
  border: 1px solid #87CEEB;
  padding: 8px;
}

#vax tr:nth-child(even){background-color: #006bb3;}

#vax tr:hover {background-color: #008ae6;}

#vax th {
  padding-top: 12px;
  padding-bottom: 12px;
  text-align: left;
  background-color: #87CEEB;
  color: white;
}
</style>

<body style="position:absolute;width:100%;height:150%;">
    <div class="container1 navbg borderXwidth fixed-top">
        <!---<div class="container1 navbg borderXwidth fixed-top">--->
        <a href="registration.jsp">Registration</a>
        <a href="login.jsp">Login</a>
        <a href="./update">Live updation</a>
    </div>
    <!---<div class="container1 navbg borderXwidth fixed-top">

    </div>-->
    <main>
        <section>
            <div class="view"  id="intro-section">
                <div class="bg" id="intro-section">
                <div ><center><h2 style="position:absolute;left:43%;top:60px;color:black;z-index:6;">Daily updates</h2></center></div>
                    <div class="container content" style="top:13%;">
                    <h1 class="nf-r1" style="left:38%;">Vaccinated today</h1>
                    <% String j=request.getAttribute("it").toString();
                    int k=Integer.parseInt(j); 
                    if(k==0){%><br>
                    <h1 class="nf-r1" style="left:38%;">No data available!</h1><br>
                    <% }else{ %>
                    <center>
                    <form action="./log" method="POST">
                    <table id="vax" style="color:white;font-size:70px;width:70%;">
                    <tr>
                    <th colspan="2">Name</th><th>Aadhar</th><th colspan="2">Age</th><th>City</th><th>Mobile</th><th>Vaccination Date</th>
                    </tr>
                    <% 
                    for ( int i = 0; i < k; i++){ 
                        %>
                    <tr>
                    <td colspan="2"><%= request.getAttribute("bname"+i) %></td>
                    <td><%= request.getAttribute("baadh"+i) %></td>
                    <td colspan="2"><%= request.getAttribute("bage"+i) %></td>
                    <td><%= request.getAttribute("bcity"+i) %></td>
                    <td><%= request.getAttribute("bmobi"+i) %></td>
                    <td><%= request.getAttribute("bdate"+i) %></td>
                    </tr>
                    <% } %>
                    </table>
                    </form>
                    </center>
                    <% } %>
<h1 class="nf-r1" style="left:38%;">Registered today</h1>
                    <% String jo=request.getAttribute("itt").toString();
                    k=Integer.parseInt(jo); 
                    if(k==0){%><br>
                    <h1 class="nf-r1" style="left:38%;">No data available!</h1>
                    <% }else{ %>
                    <center>
                    <form action="./log" method="POST">
                    <table id="vax" style="color:white;font-size:70px;width:70%;">
                    <tr>
                    <th colspan="2">Name</th><th>Aadhar</th><th colspan="2">Age</th><th>City</th><th>Mobile</th><th>Registered Date</th>
                    </tr>
                    <% 
                    for ( int i = 0; i < k; i++){ 
                        %>
                    <tr>
                    <td colspan="2"><%= request.getAttribute("rname"+i) %></td>
                    <td><%= request.getAttribute("raadh"+i) %></td>
                    <td colspan="2"><%= request.getAttribute("rage"+i) %></td>
                    <td><%= request.getAttribute("rcity"+i) %></td>
                    <td><%= request.getAttribute("rmobi"+i) %></td>
                    <td><%= request.getAttribute("rrdate"+i) %></td>
                    </tr>
                    <% } %>
                    </table>
                    </form>
                    </center>
                    <% } %>
                    
                    </div>
                </div>
            </div>
        </section>
    </main>


</body>

</html>