
<!DOCTYPE html>
<html>
<head>
	
	<title>Marks Management</title>
	<style>
		
		body {  
			background-color:lightblue; 
			 
				}  
		
		.container {
			max-width: 960px;
			margin: 0 auto;
			padding: 20px;
		}
		
		h1 {
			color: #333;
			font-size: 48px;
			font-weight: bold;
			margin-top: 100px;
			margin-bottom: 50px;
			text-align: center;
		}
		
		.nav {
			display: flex;
			justify-content: center;
		}
		.nav a {
			color: #333;
			font-size: 24px;
			font-weight: bold;
			margin: 0 20px;
			padding: 10px;
			text-decoration: none;
			transition: all 0.3s ease-in-out;
		}
		
		.nav a:hover {
			background-color: #333;
			color: #fff;
		}
	</style>
</head>
<body>
	<div class="container" >
		<h1>Welcome to MRIT</h1>
		<nav class="nav">
		<a href="insert.html">Insert the Student Data</a>
		<a href="index.jsp">View the Student Data by Usn</a>
		<a href="delete.html">Delete the Student Data by Usn</a>
		<a href="view.jsp">View all results</a>
			
		</nav>
	</div>
</body>
</html>

