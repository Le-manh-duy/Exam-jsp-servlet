
<html>
<head>
    <title>ListEmployee</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.5.2/css/bootstrap.css">
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap4.min.css">
</head>
<body class="container">
<%@ page import="com.example.employeeproject.model.Employee" %>
<%@ page import="java.util.List" %>
    <% List<Employee> employees = (List<Employee>) request.getAttribute("employees"); %>
    <% if (employees.size() != 0) { %>
<table id="example" class="table table-striped table-bordered" style="width:100%">
    <thead>
    <tr>
        <th>ID</th>
        <th>Full Name</th>
        <th>Position</th>
        <th>Department</th>
        <th>Birth Day</th>
        <th>Address</th>
        <th>Actions</th>
    </tr>
    </thead>

    <% for (Employee employee : employees) { %>
    <tr>
        <td>${employee.id}</td>
        <td>${employee.fullName}</td>
        <td>${employee.position}</td>
        <td>${employee.department}</td>
        <td>${employee.birthDay}</td>
        <td>${employee.address}</td>
        <td>
            <a href="/hello-servlet?action=edit&id=${employee.id}">Edit</a>
            <form method="POST" action="/hello-servlet" style="display:inline;">
                <input type="hidden" name="_method" value="DELETE">
                <input type="hidden" name="id" value="${employee.id}">
                <input type="submit" value="Delete">
            </form>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>
<br>
<a href="/hello-servlet?action=create">Add Employee</a>
<a type="submit" class="btn btn-info" href="userServlet">Create User</a>
    <% } else {%>
<h1>Hello !!</h1>
<a type="submit" class="btn btn-info" href="userServlet">Create User</a>
    <% } %>

</html>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://cdn.datatables.net/1.11.3/js/jquery.dataTables.min.js"></script>
<script>
    $(document).ready(function () {
        $('#example').DataTable();
    });
</script>