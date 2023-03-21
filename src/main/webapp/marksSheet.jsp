
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.io.PrintWriter"%>
<%@page import="com.marksConn.MarksCon"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>

<html lang="en">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<title>MarksSheet</title>
</head>

<body>
	<%
		String usn;
		String name;
		String cls;
		String email;
		String kannada;
		String eng;
		String maths;
		String science;
		String social;

		int total;
		int per;
		String grade;

		try {
			usn = request.getParameter("usn");
			Connection con = MarksCon.makeConnection();
			Statement s = con.createStatement();
			ResultSet rs = s.executeQuery("SELECT * FROM marks_sheet_management.student_marks WHERE usn='" + usn + "';");	
			
	%>
	<div class="container">
		<form>
			<div
				style="border: 5px solid black; margin: bottom 100px; margin-top: 5px; margin-left: 10px; padding: 50px;">
				<div>
					<button type="button" class="btn btn-primary btn-lg btn-block">MRIT</button>
					<button type="button" class="btn btn-secondary btn-lg btn-block">STUDENT
						MARKS SHEET</button>
				</div>
				<br>
				
				<div>
					<table class="table">
					<%
						while(rs.next()){

						usn = rs.getString(1);
						name = rs.getString(2);
						cls = rs.getString(3);
						email = rs.getString(4);
						kannada = rs.getString(5);
						eng = rs.getString(6);
						maths = rs.getString(7);
						science = rs.getString(8);
						social = rs.getString(9);
						total = rs.getInt(10);
						per = rs.getInt(11);
						grade = rs.getString(12);
						
					%>
						<thead class="thead-light">
							<tr>

								<th scope="col">USN</th>
								<td><%=usn %></td>
								<th scope="col">NAME</th>
								<td><%=name %></td>
							</tr>
							<tr>
								<th scope="col">EMAIL</th>
								<td><%=email %></td>
								<th scope="col">CLASS</th>
								<td><%=cls %></td>
							</tr>
						</thead>

					</table>
				</div>
				<br>
				<div>
					<table class="table">
						<thead class="thead-dark">
							<tr>
								<th scope="col">Subjects</th>
								<th scope="col">Total Marks</th>
								<th scope="col">Passing Marks</th>
								<th scope="col">Marks Obtained</th>

							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">Kannada</th>
								<td>100</td>
								<td>35</td>
								<td><%=kannada %></td>
							</tr>
							<tr>
								<th scope="row">English</th>
								<td>100</td>
								<td>35</td>
								<td><%=eng %></td>
							</tr>
							<tr>
								<th scope="row">Mathematics</th>
								<td>100</td>
								<td>35</td>
								<td><%=maths %></td>
							</tr>
							<tr>
								<th scope="row">Science</th>
								<td>100</td>
								<td>35</td>
								<td><%=science %></td>
							</tr>
							<tr>
								<th scope="row">Social</th>
								<td>100</td>
								<td>35</td>
								<td><%=social %></td>
							</tr>
						</tbody>
					</table>
				</div>
				<br>
				<div>
					<div>
						<table class="table">
							<thead class="thead-light">
								<tr>

									<th scope="col">Total Marks Obtained</th>
									<td><%=total %></td>
									<th scope="col">Passing Marks</th>
									<td>175</td>
								</tr>
								<tr>
									<th scope="col">Percentage</th>
									<td><%=per %> %</td>
									<th scope="col">Result</th>
									<td><%=grade %></td>
								</tr>
							</thead>

						</table>
					</div>
				</div>

			</div>
		</form>
	</div>
	<%
						}
					
					
					
					   if(rs.next()==false){
						out.println("result not found for given user");
						}
					
					con.close();
					s.close();
					rs.close();
} catch (Exception e) {
e.printStackTrace();
}
		
%>
</body>

</html>