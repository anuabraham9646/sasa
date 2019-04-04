<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
  <%
response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate");
response.setHeader("Pragma", "no-cache");
response.setHeader("Expires", "0");

%>
<script>
function validateForm(){
	var a = document.getElementById("id1").value;
	if(a.charAt(0)=='U'){
	 if(a.length==8)
		 return true;
	 else {
		 alert("Not a valid Customer ID");
		 return false;
	
	 }
	}
	else{
	 if(a.length==9)
		 return true;
	 else {		 alert("Not a valid SSN ID");
	 return false;
	 }
	 }
}
</script>
<%
if(session.getAttribute("user_ID") == null){
    //session.removeAttribute("user_ID");
    response.sendRedirect("Login.html");
    System.out.println("hello");
}

%>

<title>ABC Banking Website</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.6.9/angular.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style type="text/css">
  .footer {
min-height:50px;
padding: 15px 0;
width: 100%;
background-color: black;
color: white;
text-align: center;
}
  </style>

</head>
<body background="d3.jpg">

<div class="jumbotron text-center" style="margin-bottom:0">
  <h1>ABC Bank</h1>

</div>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <a class="navbar-brand" href="#">Customer Account Executive</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar1,#collapsibleNavbar2">
    <span class="navbar-toggler-icon"></span>
  </button>
   <div class="collapse navbar-collapse" id="collapsibleNavbar1">
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" href="CA_Exec.jsp">Home</a>
      </li> 
    </ul>
  </div>  
  
  <div class="navbar-collapse collapse w-100 order-3 dual-collapse2" id="collapsibleNavbar2">
        <ul class="navbar-nav ml-auto">
           
            <li class="nav-item">
                <a class="nav-link" href="Logout">Logout</a>
            </li>
        </ul>
  </div>
</nav>

<div class="container" style="margin-top:100px; min-height:400px">
  <div class="row menu">
    <div class="col-sm-12">
    
<form action="DeleteAccountServlet" method = "post" ng-app="myApp" ng-controller="validateCtrl" 
name="myForm" novalidate onsubmit="return validateForm()">
<center>
<h1> Delete Account</h1>
<br><br>
Customer ID / SSN ID:<span ng-show="myForm.id1.$error.required"><font color="tomato"><b>*<b></b></font></span>
<input type = "text" id="id1" name = "id1" ng-model="id1" required>

<input type="hidden" name="action" value="view">

<button type="submit"  ng-disabled="myForm.id1.$pristine" class="btn btn-info btn-md">
          <span class="glyphicon glyphicon-eye-open"></span> View
        </button>
<br><br><br><br><br><br><br>
</form>

<hr class="d-sm-none">
    </div>
  </div>
</div>

<div class="footer">
<p>Copyright@HJA16GroupB</p>
</div>


</body>
<script>
var app = angular.module('myApp', []);
app.controller('validateCtrl', function($scope) {
$scope.id1;

});
</script>
</html>