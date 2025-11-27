<!DOCTYPE html>
<html>
<head><title>Add Student</title></head>

 <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
 
 <body>
<%@ page import="java.sql.*" %>
<%
int id = Integer.parseInt(request.getParameter("id"));

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/studentdb", "root", "Darkboss.05");

    PreparedStatement ps = con.prepareStatement("DELETE FROM students WHERE id=?");
    ps.setInt(1, id);

    ps.executeUpdate();
    con.close();

    out.println("<h3>Deleted Successfully!</h3>");

} catch (Exception e) {
    out.println(e);
}
%>

<br><a href="list.jsp">Back</a>
</body>
</html>