<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>List ToDos page</title>
</head>
<body> 
    <div class="container">
	    <h1>Your Todos are </h1>
	    <table class="table">
	 	   <thead>
	 	   	<tr>
		 	   	<th>id</th>
		 	   	<th>Description</th>
		 	   	<th>Target Date</th>
		 	   	<th>Is Done?</th>
	 	   	</tr>
	 	   </thead>
	 	   <tbody>
	 	   	<c:forEach items="${todos}" var="todo">
	 	   		<tr>
	 	   			<td>${todo.id}</td>
	 	   			<td>${todo.description}</td>
	 	   			<td>${todo.targetDate}</td>
	 	   			<td>${todo.done}</td>
	 	   		</tr>
	 	   	</c:forEach>
	 	   </tbody>
	 	</table>
	 	<a href="add-todo" class="btn btn-success">Add Todo</a>
 	</div>
    <script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</body>
</html>