<!DOCTYPE html>
<html>
<head><title>Add Student</title></head>
<!-- <link rel="stylesheet" type="text/css" href="css/style.css">
 -->
 <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
 
 <body>
<%@ page import="java.sql.*" %>
<h2>All Students</h2>

<table border="1" cellpadding="10">
<tr>
  <th>ID</th>
  <th>Name</th>
  <th>Email</th>
  <th>Age</th>
  <th>Actions</th>
</tr>

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection(
      "jdbc:mysql://localhost:3306/studentdb", "root", "Darkboss.05");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM students");

    while (rs.next()) {
%>

<tr>
  <td><%= rs.getInt("id") %></td>
  <td><%= rs.getString("name") %></td>
  <td><%= rs.getString("email") %></td>
  <td><%= rs.getInt("age") %></td>

  <td>
    <a href="edit.jsp?id=<%= rs.getInt("id") %>">Edit</a> |
    <a href="delete.jsp?id=<%= rs.getInt("id") %>">Delete</a>
  </td>
</tr>

<%
    }
    con.close();
} catch (Exception e) {
    out.println(e);
}
%>

</table>

<br><a href="index.jsp">Add New Student</a>

<%--  <%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<title>Student List</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<div class="table-container">
    <h2>All Students</h2>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Marks</th>
            <th>Actions</th>
        </tr>

<%
try {
    Class.forName("com.mysql.cj.jdbc.Driver");
    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/studentdb", "root", "yourpassword");

    Statement st = con.createStatement();
    ResultSet rs = st.executeQuery("SELECT * FROM students");

    while(rs.next()) {
%>
        <tr>
            <td><%=rs.getInt("id")%></td>
            <td><%=rs.getString("name")%></td>
            <td><%=rs.getString("email")%></td>
            <td><%=rs.getDouble("marks")%></td>
            <td>
                <a class="edit-btn" href="edit.jsp?id=<%=rs.getInt("id")%>">Edit</a>
                <a class="delete-btn" href="delete.jsp?id=<%=rs.getInt("id")%>">Delete</a>
            </td>
        </tr>
<%
    }
} catch (Exception e) {
    out.println(e);
}
%>

    </table>

    <br>
    <center><a href="index.jsp">Add New Student</a></center>
</div>

</body>
</html>
  --%>
  
</body>
</html>