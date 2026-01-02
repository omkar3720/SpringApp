<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<!DOCTYPE html>
<html>
<head>
    <title>Employee List</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: #f4f6f9;
            padding: 30px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        table {
            width: 90%;
            margin: auto;
            border-collapse: collapse;
            background: #ffffff;
        }

        th, td {
            padding: 12px;
            border: 1px solid #ccc;
            text-align: center;
        }

        th {
            background: #1e3c72;
            color: white;
        }

        tr:nth-child(even) {
            background: #f2f2f2;
        }
    </style>
</head>
<body>

<h2>Registered Employee Details</h2>

<table>
    <tr>
        <th>Company ID</th>
        <th>Company Name</th>
        <th>Address</th>
        <th>Mobile No</th>
        <th>Username</th>
        <th>Password</th>
    </tr>

    <!-- 🔁 Iterate Employee List -->
    <c:forEach var="emp" items="${data}">
        <tr>
            <td>${emp.cid}</td>
            <td>${emp.cname}</td>
            <td>${emp.caddress}</td>
            <td>${emp.cmobNo}</td>
            <td>${emp.username}</td>
            <td>${emp.password}</td>
        </tr>
    </c:forEach>

</table>

</body>
</html>
