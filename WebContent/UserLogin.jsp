<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <!--change jsp to java language -->
   
   <%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
    <html lang="zh-CN">


<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/css/bootstrap.min.css">  
	<script src="https://cdn.staticfile.org/jquery/2.1.1/jquery.min.js"></script>
	<script src="https://cdn.staticfile.org/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/Login.css"  >


</head>


<body>
			
<form id="myform" method="post" action="UserLoginCheck">
<div class="frame1">
<img src="images/logo.png" alt="Logo" >
	<div class="Bandname"> <h2>   Students Records System</h2>  </div>
	<div class="welcome"> <h4>Welcome User!</h4> </div>
	</div>
<div class="login">
		<img src="https://dumielauxepices.net/sites/default/files/person-icons-login-712095-6175348.png" class="admin">
		<h3>~~User Login~~</h3>
		
			<!-- All the form data will save in this web -->
		<span id="tdName">
		<p><input name="username"  id="userName" type="text" placeholder="Enter username here" required > <br>
		<span class="error">${messages.username}</span> </span>
		
		<span id="pwdBox">   
		<span id="tdPass">
		<input name="password"  id="userPass" type="password" placeholder="Enter password here"required></p>
		<span class="error">${messages.password}</span> </span></span>
		<!--put required check boolean-->
		
		<span id="state"></span>
		<span ><input name="submit"  id = "buttom" onclick="check()"class="block" type="submit" name="submit" value="login" required="required"></span> 
		<span class="success">${messages.success}</span>
		<!--required=username and passwords must have sth then can submit -->
		</form>
		
		<input type="checkbox" class="check" name="check" id="boxx"> 
		<p class="click"><b>Remember My information</b></p>
		

		</div>
			
       
<a id= "right"href="http://localhost:8080/simpleLogin/Main.jsp" class="btn btn-primary btn-lg" role="button" aria-pressed="true">Home</a>

 
<a  href="#" data-toggle="modal" data-target="#exampleModalScrollable"   class="ac" >Without Account? </a> 

<a  href="Login.jsp" class="adminLogin" >Not A User? </a> 
<!-- Modal -->
<div class="modal fade" id="exampleModalScrollable" tabindex="-1" role="dialog" aria-labelledby="exampleModalScrollableTitle" aria-hidden="true">
  <div class="modal-dialog modal-dialog-scrollable" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalScrollableTitle">Warning!</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
        
      </div>
      <div class="modal-body">
       Please Find Administrator Apply A New Account! 
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
       
      </div>
    </div>
  </div>
</div>

</body>



</html>