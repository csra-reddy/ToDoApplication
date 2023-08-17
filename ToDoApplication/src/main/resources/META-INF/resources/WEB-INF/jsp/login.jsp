<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
</head>
<body>
    <!-- Welcome to the Login Page ${name} -->
    <div class="container">
	    <h1>Login</h1>
	    <pre>${errorMessage}</pre>
	    <form method="post">
	    	User Name: <input type="text" name="name">
	    	Password: <input type="password" name="password"> <br>
	    	<input type="submit" value=submit>
	    </form>
	  </div>
</body>
</html>