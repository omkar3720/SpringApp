<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Employee</title>

<!-- Bootstrap 5 CDN -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet">

</head>
<body class="bg-light">

<div class="container mt-5">
    <div class="row justify-content-center">
        <div class="col-md-6">

            <div class="card shadow">
                <div class="card-header bg-primary text-white text-center">
                    <h4>Edit Employee</h4>
                </div>

                <div class="card-body">
                    <form action="update" method="post">

                        <!-- Hidden CID -->
                        <input type="hidden" name="cid" value="${employee.cid}" />

                        <div class="mb-3">
                            <label class="form-label">Name</label>
                            <input type="text" name="cname"
                                   class="form-control"
                                   value="${employee.cname}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Address</label>
                            <input type="text" name="caddress"
                                   class="form-control"
                                   value="${employee.caddress}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Mobile Number</label>
                            <input type="text" name="cmobNo"
                                   class="form-control"
                                   value="${employee.cmobNo}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Username</label>
                            <input type="text" name="username"
                                   class="form-control"
                                   value="${employee.username}" required>
                        </div>

                        <div class="mb-3">
                            <label class="form-label">Password</label>
                            <input type="password" name="password"
                                   class="form-control"
                                   value="${employee.password}" required>
                        </div>

                        <div class="d-grid">
                            <button type="submit" class="btn btn-success">
                                Update Employee
                            </button>
                        </div>

                    </form>
                </div>
            </div>

        </div>
    </div>
</div>

</body>
</html>
