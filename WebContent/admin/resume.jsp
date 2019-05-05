<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  
  

<style>

.box{

width:300px;

padding:40px;
background-color:;

}
.box input[type="text"]{

border:0;
background:none;
margin:20px auto;
text-align:center;
border:2px solid #2980b9;
padding:14px 10px;
width:200px;
outline:none;
color:black;
border-radius:24px;
transition:0.25s;



}

.box input[type="submit"]{
border:0;
background:none;
display:block;
margin:20px auto;
text-align:center;
border:2px solid #2980b9;
padding:14px 10px;
width:160px;
outline:none;
color:#353b48;
border-radius:24px;
transition:0.25s;
cursor:pointer;



}
.box input[type="submit"]:hover{

background: #2980b9;




}






  #myFooter {
	background-color: #373a48;
	color:white;
}

#myFooter .footer-copyright{
	background-color: #383737;
	padding-top:3px;
	padding-bottom:3px;
	text-align: center;
}

#myFooter .footer-copyright p{
	margin:10px;
	color: #ccc;
}

#myFooter ul{
	list-style-type: none;
    padding-left: 0;
    line-height: 1.7;

}

#myFooter h5{
	font-size: 18px;
    color: white;
    font-weight: bold;
    margin-top: 30px;
}

#myFooter a{
	color:#d2d1d1;
	text-decoration: none;
}

#myFooter a:hover, #myFooter a:focus{
	text-decoration: none;
	color:white;
}

#myFooter .myCols{
	text-align: center;
}

#myFooter .social-networks{
	text-align: center;
	padding-top: 30px;
	padding-bottom: 38px;
}

#myFooter .social-networks a{
    font-size: 32px;
    margin-right: 5px;
    margin-left: 5px;
    color: #f9f9f9;
    padding: 10px;
    transition: 0.2s;
}

#myFooter .social-networks a:hover{
	text-decoration: none;

}

#myFooter .facebook:hover{
	color:#0077e2;
}

#myFooter .google:hover{
	color:#ef1a1a;
}

#myFooter .twitter:hover{
	color: #00aced;
}

@media screen and (max-width: 767px){
	#myFooter {
		text-align: center;
	}
}



/* CSS used for positioning the footers at the bottom of the page. */
/* You can remove this. */


html{
	height: 100% !important;
}

body{
    display: flex;
    display: -webkit-flex;
    flex-direction: column;
    -webkit-flex-direction: column;
    height: 100%;
}

.content{
	flex: 1 0 auto;
	-webkit-flex: 1 0 auto;
	min-height: 200px;
}

#myFooter{
	flex: 0 0 auto;
    -webkit-flex: 0 0 auto;
}






</style>
</head>
<body>







<nav class="navbar sticky-top navbar-expand-sm navbar-dark text-danger bg-primary ">
  <!-- Brand -->
  <h1>H</h1><sub>R</sub>M

  <!-- Links -->
  <ul class="navbar-nav  text-danger">
    <li class="nav-item">
      <a class="nav-link " href="#">Dashboard</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="#">Department</a>
    </li>

    <!-- Dropdown -->
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Employee
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="#">Add.Emp</a>
        <a class="dropdown-item" href="#">Delete.Emp</a>
       
      </div>
    </li>
       <li class="nav-item">
      <a class="nav-link" href="notice.jsp">Notices</a>
    </li>
  </ul>
</nav>











<center>
  <div class="centered">
 <form class="box" action="AddEmployee" method="Post">
 <h1>Fill the Credientials To Send Your Resume.</h1>

 <input type="text" name="name" placeholder="Enter Username">
 <input type="text" name="email" placeholder="Enter email">
  <input type="text" name="pno" placeholder="Enter Phone number">
  <input type="text" name="college" placeholder="Enter college">
 
 <input type="text" name="yog" placeholder="Enter Year of Graduation">
 <input type="text" name="skill" placeholder="Enter Skills">
  <input type="text" name="uid" placeholder="Uid">
  

 <input type="submit" class="btn btn-danger" value="Submit">
 </form>
  </div>
  </center>
  
 
  
  
  <!-- footerrrr -->
    <footer id="myFooter">
        <div class="container">
            <div class="row">
                <div class="col-sm-3 myCols">
                    <h5>Get started</h5>
                    <ul>
                        <li><a href="#">Home</a></li>
                        <li><a href="#">Sign up</a></li>
                        <li><a href="#">Downloads</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>About us</h5>
                    <ul>
                        <li><a href="#">Company Information</a></li>
                        <li><a href="#">Contact us</a></li>
                        <li><a href="#">Reviews</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>Support</h5>
                    <ul>
                        <li><a href="#">FAQ</a></li>
                        <li><a href="#">Help desk</a></li>
                        <li><a href="#">Forums</a></li>
                    </ul>
                </div>
                <div class="col-sm-3 myCols">
                    <h5>Legal</h5>
                    <ul>
                        <li><a href="#">Terms of Service</a></li>
                        <li><a href="#">Terms of Use</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="social-networks">
            <a href="#" class="twitter"><i class="fa fa-twitter"></i></a>
            <a href="#" class="facebook"><i class="fa fa-facebook-official"></i></a>
            <a href="#" class="google"><i class="fa fa-google-plus"></i></a>
        </div>
        <div class="footer-copyright">
            <p>� 2016 Copyright Text </p>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  
  
  
  
  
  
  
  
  

</body>
</html>