<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-+0n0xVW2eSR5OomGNYDnhzAbDsOXxcvSN1TPprVMTNDbiYZCxYbOOl7+AMvyTG2x" crossorigin="anonymous">

    <title>Edit Employee</title>
  </head>
  <body>
    
    
      <div class="" style="display:flex; justify-content:flex-end; padding:20px">
    	<form action="logout" method="post">
		     <button type="submit" class="btn btn-danger mt-1">Logout</button>
		 </form>
      </div>
    </div>
     <div class="container mt-5 mb-5">
    	<h3 class="text-center mb-5"><u>Edit Employee Details</u></h3>
	    <form action="addEmployee" method="post">
	    <div class="mb-3">
		    <label for="empid" class="form-label">Emp Code: </label>
		    <input required type="text" name="employeeCode" class="form-control" id="empid" >
		  </div>
		  <div class="mb-3">
		    <label for="empname" class="form-label">Name: </label>
		    <input required type="text" name="employeeName" class="form-control" id="empname">
		  </div>
		  <div class="mb-3">
		    <label for="emploc" class="form-label">Location: </label>
		    <input required type="text" name="location" class="form-control" id="emploc">
		  </div>
		  <div class="mb-3">
		    <label for="empemail" class="form-label">Email: </label>
		    <input required type="email" name="email" class="form-control" id="empemail">
		  </div>
		  <div class="mb-3">
		    <label for="empdob" class="form-label">Date of Birth: </label>
		    <input required type="date" name="dateOfBirth" class="form-control" id="empdob">
		  </div>
		  <button type="submit" class="btn btn-primary">Save</button>
		  <input type="reset" value="Cancel" class="btn btn-danger">
		</form>
		
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