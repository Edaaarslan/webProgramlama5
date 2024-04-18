package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.*;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Kullanıcı adı ve şifre parametrelerini al
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        
        // "Sonraki Girişte Tanı" checkbox kontrolü
        boolean rememberMe = request.getParameter("rememberMe") != null;

        // Kullanıcı doğrulama (örneğin, kullanıcı adını ve şifreyi kontrol et)
        // Basit bir örnek olarak, kullanıcı adı ve şifre eşleşmesi durumunda kabul edilir.
        if ("kullanici".equals(username) && "sifre".equals(password)) {
            // Kullanıcı doğrulandı, cookie ayarla (eğer "Sonraki Girişte Tanı" seçildiyse)
            if (rememberMe) {
                Cookie usernameCookie = new Cookie("username", username);
                Cookie passwordCookie = new Cookie("password", password);
                
                // Cookie'lerin geçerlilik süresi (örneğin, 1 hafta)
                int cookieMaxAge = 7 * 24 * 60 * 60; // 1 hafta
                
                usernameCookie.setMaxAge(cookieMaxAge);
                passwordCookie.setMaxAge(cookieMaxAge);
                
                response.addCookie(usernameCookie);
                response.addCookie(passwordCookie);
            }

            // Başarılı giriş, ana sayfaya yönlendir
            response.sendRedirect("homepage.jsp");
        } else {
            // Başarısız giriş, yeniden login sayfasına yönlendir
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        // Otomatik oturum açma işlemi
        Cookie[] cookies = request.getCookies();
        
        if (cookies != null) {
            String username = null;
            String password = null;
            
            // Cookie'leri kontrol et ve kullanıcı adı ve şifre bilgilerini al
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                } else if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                }
            }

            // Kullanıcı adı ve şifre geçerliyse otomatik olarak ana sayfaya yönlendir
            if ("kullanici".equals(username) && "sifre".equals(password)) {
                response.sendRedirect("homepage.jsp");
                return;
            }
        }
        
        // Oturum açma başarısızsa, login sayfasına yönlendir
        response.sendRedirect("login.jsp");
    }
}