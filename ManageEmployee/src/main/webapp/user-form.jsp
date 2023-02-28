<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
	<script src="https://kit.fontawesome.com/e0374b34cb.js" crossorigin="anonymous"></script>
	
<style type="text/css">
nav ul{
 list-style:none;
 padding: 15px 50px;
 display: flex;
 justify-content: space-between;
 align-items: center;
}
nav ul li a h4{
  color: #fff;
}
ul .emp{
  margin-left: 10px;
  color: #fff;
}
ul .visit-emp{
   border-radius: 5px;
 padding: 7px 12px;
 background-color: rgb(22,31,41);
 transition: 0.3s ease-in;
 
}
ul .visit-emp:hover{
  background-color: rgb(22,31,76);
  transition: 0.3s ease-in;
}
ul i{
 color:#fff;
}
label{
 font-family: sans-serif;
}
input[type=text]{
   border-radius: 0;
   border: 1px solid gray;
}
input[type=date]{
   border-radius: 0;
   border: 1px solid gray;
}


</style>
</head>
<body onload="myFunction()">

	<header>
		<nav class=""
			style="background-color: rgb(67,93,125);">
			
			<ul class="">
			<li>
			      <a class="header-text" href="" class=""><h4> Employee
					Management Application </h4></a>
			    </li>
			   <li>
			      <input style="width: 600px;" type="text"
						value="" placeholder="Search something ......" class="form-control"
						name="" required="required">
			    </li>
				<li class="visit-emp"><i class="fa-solid fa-eye"></i><a class="emp" href="<%=request.getContextPath()%>/list"
					class="nav-link">Employees</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-4 form-ss">
		<div class="card" style="border:1px solid rgb(22,31,41);">
			<div class="card-body">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
					<form action="insert" method="post">
				</c:if>

				<caption >
					<h2 style="text-align:center; font-family: sans-serif; color:rgb(164,2,64);">
						<c:if test="${user != null}">
            			<i style="margin-right: 14px;" class="fa-solid fa-user-tie"></i>Update Employee Details
            		</c:if>
						<c:if test="${user == null}">
            			<i style="margin-right: 14px;" class="fa-solid fa-user-plus"></i>Add New Employee
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

               <fieldset class="form-group">
					<label>Nic</label> <input type="text"
						value="<c:out value='${user.nic}' />" class="form-control"
						name="nic" required="required" placeholder="Employee Nic">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Name</label> <input type="text"
						value="<c:out value='${user.name}' />" class="form-control"
						name="name" required="required" placeholder="Employee Name">
				</fieldset>

				<fieldset class="form-group">
					<label>Department</label> <input type="text"
						value="<c:out value='${user.department}' />" class="form-control"
						name="department" required="required" placeholder="Employee Department">
				</fieldset>

				<fieldset class="form-group">
					<label>Designation</label> <input type="text"
						value="<c:out value='${user.designation}' />" class="form-control"
						name="designation" required="required" placeholder="Employee Designation">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Join Date</label> <input type="date"
						value="<c:out value='${user.joindate}' />" class="form-control"
						name="joindate" required="required" placeholder="Employee Join Date">
				</fieldset>

				<button type="submit" class="btn btn-success col-md-12">ADD</button>
				</form>
			</div>
		</div>
	</div>
</body>
</html>