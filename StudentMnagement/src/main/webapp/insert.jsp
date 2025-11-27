 <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">

<%@ page import="java.sql.*" %>
<%
String name = request.getParameter("name");
String email = request.getParameter("email");
int age = Integer.parseInt(request.getParameter("age"));

try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/studentdb", "root", "Darkboss.05");

    String sql = "INSERT INTO students(name, email, age) VALUES (?, ?, ?)";
    PreparedStatement ps = con.prepareStatement(sql);
    ps.setString(1, name);
    ps.setString(2, email);
    ps.setInt(3, age);

    ps.executeUpdate();
    con.close();
    out.println("<h3>Student added successfully!</h3>");
} catch (Exception e) {
    out.println(e);
}
%>

<br><a href="index.jsp">Add More</a>
<br><a href="list.jsp">View Students</a>
