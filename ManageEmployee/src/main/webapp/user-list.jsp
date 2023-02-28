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
.edit-btn{
   color: white;
   background-color: rgb(253,151,29);
   padding: 5px 25px;
   padding-left: 15px;
   border-radius: 5px;
   text-decoration: none;
   color: #fff;
   transition: 0.3s ease-in;
}
.edit-btn:hover{
      text-decoration: none;
      color: #000;
      background-color: orange;
      transition: 0.3s ease-in;
}
table thead{
     background-color: rgb(24,18,99);
     color: #fff;
     text-align: center;
}
table tbody{
       text-align: center;
}
.delete-btn{
   color: white;
   background-color: rgb(214,25,43);
   padding: 5px 17px;
   border-radius: 5px;
   text-decoration: none;
   color: #fff;
   transition: 0.3s ease-in;
}
.delete-btn:hover{
      text-decoration: none;
      color: #000;
      background-color: red;
      transition: 0.3s ease-in;
}
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
tr:hover {background-color: #eee;}

</style>
</head>
<body>
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

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 style="font-family: sans-serif;   text-shadow: 2px 2px 5px red;" class="text-center">List of All Employees</h3>
			<hr>
			<div class="container text-left">

				<a  href="<%=request.getContextPath()%>/new" class="btn btn-success"><i style="margin-right: 7px;" class="fa-solid fa-circle-plus"></i>Add
					New Employee</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
			     		<th>Nic</th>
						<th>Name</th>
						<th>Department</th>
						<th>Designation</th>
			            <th>Join Date</th>
						<th>Actions</th>
					</tr>
				</thead>
				<tbody>
				
					<c:forEach var="user" items="${listUser}">

						<tr>
					        <td><c:out value="${user.nic}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.department}" /></td>
							<td><c:out value="${user.designation}" /></td>
			                <td><c:out value="${user.joindate}" /></td>
							<td><a class="edit-btn" href="edit?id=<c:out value='${user.id}'/>"><i style="margin-right:7px;" class="fa-solid fa-pen"></i>Edit</a>
								&nbsp;&nbsp;&nbsp;&nbsp; <a class="delete-btn"
								href="delete?id=<c:out value='${user.id}' />"><i style="margin-right:7px;" class="fa-solid fa-trash"></i>Delete</a></td>
						</tr>
					</c:forEach>
		
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>