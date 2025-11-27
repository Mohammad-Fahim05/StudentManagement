<!DOCTYPE html>
<html>
<head><title>Add Student</title></head>
<!-- <link rel="stylesheet" type="text/css" href="css/style.css">
 -->
 <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
 
 <body>
<%@ page import="java.sql.*" %>

<%
int id = Integer.parseInt(request.getParameter("id"));
String name = request.getParameter("name");
String email = request.getParameter("email");
int age = Integer.parseInt(request.getParameter("age"));

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/studentdb", "root", "Darkboss.05");

    PreparedStatement ps = con.prepareStatement(
      "UPDATE students SET name=?, email=?, age=? WHERE id=?");

    ps.setString(1, name);
    ps.setString(2, email);
    ps.setInt(3, age);
    ps.setInt(4, id);

    ps.executeUpdate();
    con.close();

    out.println("<h3>Student updated successfully!</h3>");

} catch (Exception e) {
    out.println(e);
}
%>

<br><a href="list.jsp">Back to List</a>
</body>
</html>