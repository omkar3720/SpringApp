<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Employee Registration</title>

    <style>
        body {
            font-family: Arial, Helvetica, sans-serif;
            background: linear-gradient(120deg, #1e3c72, #2a5298);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        .register-box {
            background: #ffffff;
            padding: 30px;
            width: 380px;
            border-radius: 8px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.3);
        }

        .register-box h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        .register-box label {
            font-weight: bold;
        }

        .register-box input,
        .register-box textarea {
            width: 100%;
            padding: 10px;
            margin: 8px 0 15px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }

        .register-box textarea {
            resize: none;
            height: 60px;
        }

        .register-box button {
            width: 100%;
            padding: 10px;
            background: #1e3c72;
            border: none;
            color: white;
            font-size: 16px;
            border-radius: 4px;
            cursor: pointer;
        }

        .register-box button:hover {
            background: #16335f;
        }

        .msg {
            color: green;
            text-align: center;
            margin-bottom: 10px;
        }

        .error {
            color: red;
            text-align: center;
            margin-bottom: 10px;
        }

        .link {
            text-align: center;
            margin-top: 15px;
        }

        .link a {
            text-decoration: none;
            color: #1e3c72;
            font-weight: bold;
        }
    </style>
</head>
<body>

<div class="register-box">
    <h2>Employee Registration</h2>



    <form action="register" >

        <label>Company Name</label>
        <input type="text" name="cname" required>

        <label>Company Address</label>
        <textarea name="caddress" required></textarea>

        <label>Mobile Number</label>
        <input type="text" name="cmobNo" pattern="[0-9]{10}"
               title="Enter 10 digit mobile number" required>

        <label>Username</label>
        <input type="text" name="username" required>

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Register</button>
    </form>

    <div class="link">
        Already registered? <a href="login">Login here</a>
    </div>
</div>

</body>
</html>
