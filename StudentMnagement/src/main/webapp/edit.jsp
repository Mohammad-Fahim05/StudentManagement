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

String name="", email="";
int age=0;

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/studentdb", "root", "Darkboss.05");

    PreparedStatement ps = con.prepareStatement("SELECT * FROM students WHERE id=?");
    ps.setInt(1, id);

    ResultSet rs = ps.executeQuery();

    if (rs.next()) {
        name = rs.getString("name");
        email = rs.getString("email");
        age = rs.getInt("age");
    }
    con.close();

} catch (Exception e) {
    out.println(e);
}
%>

<h2>Edit Student</h2>

<form action="update.jsp" method="post">
  <input type="hidden" name="id" value="<%= id %>">

  Name: <input type="text" name="name" value="<%= name %>" required><br><br>
  Email: <input type="email" name="email" value="<%= email %>" required><br><br>
  Age: <input type="number" name="age" value="<%= age %>" required><br><br>

  <input type="submit" value="Update">
</form>

<br><a href="list.jsp">Back</a>
</body>
</html>