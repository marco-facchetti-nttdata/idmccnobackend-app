<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="it">
<head>
    <meta charset="UTF-8">
    <title>IdmCCNOBackend</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 40px;
            background: #f5f5f5;
        }
        .box {
            max-width: 720px;
            margin: auto;
            padding: 30px;
            background: white;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0,0,0,0.08);
        }
        h1 {
            margin-top: 0;
        }
    </style>
</head>
<body>
<div class="box">
    <h1>IdmCCNOBackend</h1>
    <p>Applicazione JSP deployata come WAR su Docker/Tomcat.</p>
    <p>Server time: <%= new java.util.Date() %></p>
</div>
</body>
</html>
