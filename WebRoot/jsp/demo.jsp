<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <title>系统登录</title>
	<style type="text/css">
	
	</style>
</head>
<body >

<style>
		.login{
			width:350px;
			height:450px;
			background-color:darkgray;
			top:50%;
			left:50%;
			position:absolute;
			transform:translate(-50%,-50%);
		}
		.admin{
			width:100px;
			height:100px;
			top :30%;
			left :50%;
			
			position:absolute;
			transform:translate(-50%,-50%);
		}
		h3{
			text-align:center;
			front-size:22px;
			marign: 0;
			padding-top:0 0 20px;
			
		}
		.login p{
			
			top:44%;
			padding: 5px;
			align:center;
			left:27%;
			right: -10%;
			position:absolute;	
		}
		.checkbox{
			top:34%;
			
			
		}
		.block {
			width:100%;
			height:40px;
			
			background-color: #4CAF50;
			top:60%;
			position:absolute;
		}
		.login a{
			color:red;
			text-decoration: none;
			front-size:50px;
			 
			line-height:20px;
			top:85%;
			right: 31%;
			position:absolute;
			align:center;
		}
		.login label {
          float: left;
          margin: 80px 0px;
		  width:60%;
        }
       .login input[type="checkbox"]{
        float:right;
        margin: 270px 0px;
        width: 650px;
        }
		.click{
			margin:121px -65px;
			left:20px;
		}
		.text2{
			margin:117px -50px; 
		} 
		
.navbar {
  overflow: hidden;
  background-color: #333;
  
} 
.dropdown {
  float: left;
  overflow: hidden;
  display:inline-table
  justify-content: center;
}	
.navbar a {
  float: left;
  font-size: 16px;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}
.dropdown .dropbtn {
  font-size: 16px;  
  border: none;
  outline: none;
  color: white;
  padding: 14px 16px;
  background-color: inherit;
  font-family: inherit;
  margin: 0;
}

.navbar a:hover, .dropdown:hover .dropbtn {
  background-color: red;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f9f9f9;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  float: none;
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
  text-align: left;
}

.dropdown-content a:hover {
  background-color: #ddd;
}

.dropdown:hover .dropdown-content {
  display: block;
  }
  
.loginbox{
  position: absolute;
  top:20%;
  transform:translate(-10%,-10%);


}
	</style>






<div class="navbar">
	 <a href="index.html">Home</a>
	<div class="dropdown">
    <button class="dropbtn">News
      <i class="fa fa-caret-down"></i> <!-- icon logo-->
    </button>
    <div class="dropdown-content">
      <a href="#">celebrate 100,000,000 Download</a>
      <a href="#">We won Global Top10 Enterprise Glory</a>
      <a href="#">Most Popular Website</a>
	  
	 	
	  <button class="dropbtn">Recent News
	    <i class="fa fa-caret-down"></i> <!-- icon logo-->
	    </button>
	    <div class="dropdown-content">
	      <a href="#">--</a>
	      <a href="#">--</a>
	      <a href="#">--</a>
	  	  <a href="#">--</a>
	  </div>
	  </div>
	  </div>
	  	
	
	
	<div class="dropdown">
	 <button class="dropbtn">Feedback
	   <i class="fa fa-caret-down"></i> <!-- icon logo-->
	   </button>
	   <div class="dropdown-content">
	     <a href="#">Google Gmail</a>
	     <a href="#">Yahoo mail</a>
	     <a href="#">Facebook</a>
	</div>
	</div>
	
	<div class="dropdown">
	 <button class="dropbtn">Contact us
	   <i class="fa fa-caret-down"></i> <!-- icon logo-->
	   </button>
	   <div class="dropdown-content">
	     <a href="#">Phone call list</a>
	     <a href="#">Our location</a>
	     <a href="#">Gmail</a>
	</div> 
	</div>
	</div>
	
	
	
		<div class="login">
		<img src="https://dumielauxepices.net/sites/default/files/person-icons-login-712095-6175348.png" class="admin">
		<h3>Login processing</h3>
		<form action="form_action.asp">
			<!-- All the form data will save in this web -->
			
		<p><input name="usename" type="text" placeholder="Enter Username here" required> <br>
		<input name="passwords" type="passwords" placeholder="Enter passwords here"required></p>
		<!--put required chech boolean-->
		
		<input name="submit" class="block" type="submit" name="submit" value="login" required="required"> 
		<!--required=username and passwords must have sth then can submit -->
		
		<input type="checkbox" class="check" name="check" id="boxx"> 
		<p class="click"><h>Recemember My Password</h></p>
		<p class="text2"><a href="https://support.google.com/accounts?hl=en-GB#topic=3382296">Help</a></p>
		
		<a href="https://accounts.google.com/signup/v2/webcreateaccount?service=mail&continue=https%3A%2F%2Fmail.google.com%2Fmail%2F&ltmpl=default&gmb=exp&biz=false&flowName=GlifWebSignIn&flowEntry=SignUp">Creat a new account</a>
		
		</form>
		
		</div>
		<hr>
		<div>
请求信息:
<div>
<br>姓名:<input id="name" name="name" value="">
<br>返回信息:
<div id="responseId"></div>
<button onclick="submit()">提交</button>
</div>

		
		<!-- =================================================================== -->
</body>
<script type="text/javascript" src="jquery-1.9.js"></script>
<script type="text/javascript">
	function submit(){
		$.ajax({
		    type: "POST",
		    url: "/demo1/servlet",
		    data: {"username":$("#name").val()},
		    success: function(data){
		        $("#responseId").html(data);
		    }
		});
	}
</script>
</html>
