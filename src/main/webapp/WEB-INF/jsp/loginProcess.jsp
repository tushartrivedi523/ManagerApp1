

<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.boot.repository.HibernateConfiguration"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="org.hibernate.Query"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="javax.servlet.http.HttpSession,
    								  java.util.ArrayList"%>

<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/@fortawesome/fontawesome-free@5.15.3/css/fontawesome.min.css" integrity="undefined" crossorigin="anonymous">
    
    <title>Dashboard</title>
  </head>
  <body>
    
    <div class="" style="display:flex; justify-content:flex-end; padding:20px">
    	<h6 class="m-2">${msg}</h6> 
    	<form action="logout" method="post">
		     <button type="submit" class="btn btn-danger mt-1">Logout</button>
		 </form>
    </div>
    <div class="container">
    	<h3 class="mt-4"style="text-align:center"><u><b>Employees Listing</b></u></h3>
    	<div style="display:flex; justify-content:center">
    	
	    	<form class="mt-5 text-center" action="showNewForm" method="get">
				<input class="btn btn-warning" type="submit" value="Upload Employee Details">
			</form>
			
			<form class="mt-5 text-center" action="listEmployee" method="get">
				<input style="margin-left:5px;"class="btn btn-primary" type="submit" value="Download Employee Details">
			</form>
		</div>
	    <table class="table mt-2 mb-4 table table-hover table-striped table-bordered">
		  <thead>
		    <tr>
		      <th scope="col" style="text-align:center">Emp Code</th>
		      <th scope="col" style="text-align:center">Employee Name</th>
		      <th scope="col" style="text-align:center">Location</th>
		      <th scope="col" style="text-align:center">Email</th>
		      <th scope="col" style="text-align:center">Date Of Birth(yyyy-MM-dd)</th>
		      <th scope="col" style="text-align:center">Action</th>
		    </tr>
		  </thead>
		  <tbody>
		  <c:forEach var="users" items="${users}">
                <tr>
                  <td style="text-align:center">${users.employeeCode}</td>
                  <td style="text-align:center">${users.employeeName}</td>
                  <td style="text-align:center">${users.location}</td>
                  <td style="text-align:center">${users.email}</td>
                  <td style="text-align:center">${users.dateOfBirth}</td>
                  <td style="text-align:center">
                  <form action="showUpdateForm" method="get">
		      		<button type="submit" class="btn btn-dark">Edit</button>
		      	  </form>
                  </td>
                </tr>
              </c:forEach>
		  </tbody>
		</table>
    </div>
    
    
   

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: Bootstrap Bundle with Popper -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-gtEjrD/SeCtmISkJkNUaaKMoLD0//ElJ19smozuHV6z3Iehds+3Ulb9Bn9Plx0x4" crossorigin="anonymous"></script>

    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/js/bootstrap.min.js" integrity="sha384-Atwg2Pkwv9vp0ygtn1JAojH0nYbwNJLPhwyoVbhoPwBhjQPR5VtM2+xf0Uwh9KtT" crossorigin="anonymous"></script>
    -->
  </body>
</html>