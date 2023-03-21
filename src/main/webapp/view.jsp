<%@page import="com.marksConn.MarksCon"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js" integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js" integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF" crossorigin="anonymous"></script>
    <title>View Data</title>
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
		response.setContentType("text/html");
		
		Connection con=MarksCon.makeConnection();
		Statement s=con.createStatement();
		ResultSet rs=s.executeQuery("SELECT * FROM marks_sheet_management.student_marks;");		
%>

	<div>
    <table class="table table-bordered border-dark table-hover">
    
     <thead class="table-dark">
     		 <tr>
                <th scope="row">USN</th>
              
               
                <th scope=row>NAME</th>                            
                <th scope="row">CLASS</th>
               	<th scope="row">EMAIL</th>
               	 <th scope="row">KANNADA</th>	
                 <th scope="row">ENGLISH</th> 		
                  <th scope="row">MATHS</th>  		
                  <th scope="row">SCIENCE</th>  	               
                  <th scope="row">SOCIAL</th>	              
                  <th scope="row">TOTAL</th>                  
                  <th scope="row">PERCENTAGE</th>                                       
                   <th scope="row">GRADE</th>   
                   </tr>
              </thead>    
      <tbody>
       <%	while(rs.next()){

			usn=rs.getString(1);
			name=rs.getString(2);
			cls = rs.getString(3);
			email = rs.getString(4);
			kannada = rs.getString(5);
			eng = rs.getString(6);
			maths = rs.getString(7);
			science = rs.getString(8);
			social = rs.getString(9);
			total = rs.getInt(10);
			per = rs.getInt(11);
			grade = rs.getString(12); %> 
          
           	<tr>
                <td><%=usn %></td>
          
                 <td><%=name %></td>
           
                 <td> <%=cls %></td>
          
                 <td><%=email%></td>
           
                  <td><%=kannada %></td>
            
                   <td><%=eng %></td>
           
                    <td><%=maths %></td>
             
                    <td><%=science %></td>
            
                   <td><%=social%></td>
             
                     <td><%=total %></td>
            
                   <td><%=per %></td>
             
                     <td><%=grade %></td>
               </tr>
           
      
        
        </tbody>
        <%} %>
      </table>
     
 </div>
      <%
					con.close();
					s.close();
					rs.close();
} catch (Exception e) {
e.printStackTrace();
}
		
%>
    
</body>
</html>