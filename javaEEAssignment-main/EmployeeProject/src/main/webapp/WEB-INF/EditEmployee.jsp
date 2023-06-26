<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Edit Employee</title>
</head>
<body>
<h2>Edit Employee</h2>
<form method="POST" action="/hello-servlet" enctype="application/x-www-form-urlencoded">
  <input type="hidden" name="_method" value="PUT">
  <input type="hidden" name="id" value="${employee.id}">
  <label for="fullName">Full Name:</label><br>
  <input type="text" id="fullName" name="fullName" value="${employee.fullName}"><br><br>
  <label for="position">Position:</label><br>
  <input type="text" id="position" name="position" value="${employee.position}"><br><br>
  <label for="department">Department:</label><br>
  <input type="text" id="department" name="department" value="${employee.department}"><br><br>
  <label for="birthDay">Birth Day:</label><br>
  <input type="text" id="birthDay" name="birthDay" value="${employee.birthDay}"><br><br>
  <label for="address">Address:</label><br>
  <input type="text" id="address" name="address" value="${employee.address}"><br><br>
  <input type="submit" value="Update">
</form>
</body>
</html>
