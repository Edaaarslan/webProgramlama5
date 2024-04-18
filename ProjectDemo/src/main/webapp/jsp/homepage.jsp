<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My App - Ana Sayfa</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Genel stiller */
        body {
            background-color: #001f3f; 
            font-family: 'Poppins', sans-serif;
            margin: 0;
            padding: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            color: #fff; 
        }
        /* Başlık */
        h1 {
            font-size: 36px;
            font-weight: 600;
            margin-bottom: 20px;
        }
        /* Metin */
        p {
            font-size: 18px;
        }
        /* Buton */
        a {
            background-color: #007bff; 
            color: white;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: 600;
            margin-top: 20px;
        }
        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>Hoş geldiniz!</h1>
    <p>Bu sizin ana sayfanız.</p>
    <a href="/logout">Çıkış Yap</a>

    <!-- Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
