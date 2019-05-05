<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
        <%@page import="java.sql.ResultSet"%>
<%@page import="chitkara.dao.NoticeDao"%>
    <%NoticeDao user=(NoticeDao)session.getAttribute("notice"); %>
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
  
  
  
  
  
   
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="generator" content="Mobirise v4.9.7, mobirise.com">
  <meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1">
  <link rel="shortcut icon" href="assets/images/logo2.png" type="image/x-icon">
  <meta name="description" content="Web Page Generator Description">
  
 
  <link rel="stylesheet" href="assets/tether/tether.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-grid.min.css">
  <link rel="stylesheet" href="assets/bootstrap/css/bootstrap-reboot.min.css">
  <link rel="stylesheet" href="assets/theme/css/style.css">
  <link rel="stylesheet" href="assets/mobirise/css/mbr-additional.css" type="text/css">
  
  

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
<jsp:useBean id="c1" class="chitkara.operation.ProfileOperation"></jsp:useBean>
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


 <br>
  <br>
   

<section class="mbr-section article content10 cid-rnrtRtJdED" id="content10-1g">
    
     

    <div class="container">
        <div class="inner-container" style="width: 66%;">
            <hr class="line" style="width: 25%;">
            <div class="section-text align-center mbr-black mbr-fonts-style display-5">
            <h3>NOTICE</h3>
             <table>
               <% ResultSet rs=c1.shownotice();

                 while(rs.next()){
             %>
                  <tr>
                  <td>
                  <%=rs.getString("date")%>
                  </td>
                  <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                   <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                   <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                     <td>
                  </td>
                   <td>
                  <%=rs.getString("message")%>
                  </td>
                  </tr>
                   <%} %>
                   </table>
                </div>
            <hr class="line" style="width: 25%;">
        </div>
    </div>
</section>


  <section class="engine"><a href="https://mobirise.info/x">free css templates</a></section><script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/theme/js/script.js"></script>
 
  <br>
  <br>
 
  
   <section class="mbr-section form1 cid-rnrDnvzERT" id="form1-1m">

    <form action="AddComplaint" method="Post">
    <input type="text" name="name" placeholder="name">
    <input type="text" name="email" placeholder="email">
    <input type="text" name="message" placeholder="message">
    <input type="submit" >
    </form>


</section>


  <section class="engine"><a href="https://mobirise.info/u">bootstrap html templates</a></section><script src="assets/web/assets/jquery/jquery.min.js"></script>
  <script src="assets/popper/popper.min.js"></script>
  <script src="assets/tether/tether.min.js"></script>
  <script src="assets/bootstrap/js/bootstrap.min.js"></script>
  <script src="assets/smoothscroll/smooth-scroll.js"></script>
  <script src="assets/theme/js/script.js"></script>
  <script src="assets/formoid/formoid.min.js"></script>
  
  <br>
  <br>
  <br>
  
 
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
            <p>© 2016 Copyright Text </p>
        </div>
    </footer>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  
  
  
  
  
  
  
  
  
  

</body>
</html>