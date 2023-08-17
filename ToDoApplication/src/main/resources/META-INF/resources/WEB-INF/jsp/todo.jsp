<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
	<link href="webjars/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add ToDos page</title>
</head>
<body> 
    <div class="container">
	    <h1>Enter Todo details </h1>
	    <form method="post">
	    	Description: <input type="text" name="description" required="required"/>
	    	<input type="submit" class="btn btn-success"/>
	    </form>
 	</div>
    <script src="webjars/bootstrap/5.3.0/js/bootstrap.min.js"></script>
    <script src="webjars/jquery/3.6.4/jquery.min.js"></script>
</body>
</html>