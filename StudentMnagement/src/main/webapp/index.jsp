
<!DOCTYPE html>
<html>
<head><title>Add Student</title></head>
<!-- <link rel="stylesheet" type="text/css" href="css/style.css">
 -->
 <link rel="stylesheet" href="<%= request.getContextPath() %>/style.css">
 
 <body>
 

<h2>Add New Student</h2>

<form action="insert.jsp" method="post">
  Name: <input type="text" name="name" required><br><br>
  Email: <input type="email" name="email" required><br><br>
  Age: <input type="number" name="age" required><br><br>

  <input type="submit" value="Save">
</form>

<br>
<a href="list.jsp">View All Students</a>

</body>
</html>

 <%-- <%@ page language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Add Student</title>
<link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>

<div class="container">
    <h2>Add Student</h2>
    <form action="insert.jsp" method="post">
        <label>Name:</label>
        <input type="text" name="name" required>

        <label>Email:</label>
        <input type="email" name="email" required>

        <label>Marks:</label>
        <input type="number" name="marks" required>

        <input type="submit" value="Save Student">
    </form>

    <p style="text-align:center;">
        <a href="list.jsp">View All Students</a>
    </p>
</div>

</body>
</html>
  --%>