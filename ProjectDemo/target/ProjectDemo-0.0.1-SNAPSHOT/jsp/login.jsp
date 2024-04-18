<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>My App - Login</title>
    <!-- Bootstrap CSS -->
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/5.3.0/css/bootstrap.min.css" rel="stylesheet">
    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <!-- Custom CSS -->
    <style>
        /* Genel stiller */
        body {
            background-color: #001f3f; /* Arka plan lacivert */
            font-family: 'Poppins', sans-serif;
            margin: 0;
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
        }
        /* Form kapsayıcısı */
        .form-container {
            background-color: rgba(255, 255, 255, 0.1); /* Formun arka planını hafif şeffaf yapar */
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
            width: 400px;
        }
        /* Başlık */
        h2 {
            color: #fff; /* Beyaz yazı rengi */
            font-weight: 600;
            text-align: center;
            margin-bottom: 20px;
        }
        /* Form grupları */
        .form-group {
            margin-bottom: 15px;
        }
        /* Form elemanları */
        .form-control {
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            background-color: #f8f9fa;
        }
        /* Form etiketleri */
        .form-label {
            font-size: 14px;
            color: #fff; /* Beyaz yazı rengi */
            display: block;
            margin-bottom: 5px;
        }
        /* Giriş düğmesi */
        button {
            width: 100%;
            background-color: #007bff; /* Mavi tonlarında düğme */
            color: white;
            border-radius: 5px;
            padding: 10px;
            font-size: 16px;
            font-weight: 600;
            margin-top: 10px;
        }
        button:hover {
            background-color: #0056b3; /* Düğme hover durumu */
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>LOGİN</h2>
        <form action="/login" method="post">
            <div class="form-group">
                <label for="username" class="form-label">Kullanıcı Adı:</label>
                <input type="text" id="username" name="username" class="form-control" placeholder="Kullanıcı adınızı girin" required>
            </div>
            
            <div class="form-group">
                <label for="password" class="form-label">Şifre:</label>
                <input type="password" id="password" name="password" class="form-control" placeholder="Şifrenizi girin" required>
            </div>
            
            <div class="form-check">
                <input type="checkbox" id="rememberMe" name="rememberMe" class="form-check-input">
                <label for="rememberMe" class="form-check-label" style="color: #fff;">Sonraki Girişte Tanı</label>
            </div>
            
            <button type="submit" class="btn btn-primary mt-3">Login</button>
        </form>
    </div>

    <!-- Bootstrap JavaScript -->
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script src="https://stackpath.com/bootstrap/5.3.0/js/bootstrap.bundle.min.js"></script>
</body>
</html>
