<%@page import="com.axelor.model.Student"%>
<%@page import="com.axelor.service.StudentService" %>
<%@page import="javax.persistence.Query"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.axelor.model.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<center>
<a href="logout.jsp">Logout</a>
</center>
<title>Contact Book</title>
</head>
<style>
#t1, th {
  border: 1px solid black;
  border-collapse: collapse;
}
</style>
<body>
<form action="post">
  <center>
  <h1>Student</h1>
    <table id = "t1">
      <tr>
        <th>Name</th>
        <th>Marks</th>
        <th>Email</th>
      </tr>
      <tbody>
      <%
   //   User user = (User) session.getAttribute("user");
 	  StudentService studentService = new StudentService();
      List<Student> list = studentService.getListOfStudent();
      for (Student s : list) {
		  
    	  
    	  
	 %>
	   
	 			<tr>
                 	 
                     <td><%=s.getName()%></td>
                     <td><%=s.getMarks()%></td>
                     <td><%=s.getEmail()%></td>
                 </tr>
	    <%  	   
	       }%>
	       
	       <tbody>
	    </table>
    <br>  
  </center>

</form>
</body>
</html>