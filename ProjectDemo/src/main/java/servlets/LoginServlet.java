package servlets;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        boolean rememberMe = request.getParameter("rememberMe") != null;

        if ("kullanici".equals(username) && "sifre".equals(password)) {
            if (rememberMe) {
                Cookie usernameCookie = new Cookie("username", username);
                Cookie passwordCookie = new Cookie("password", password);

                int cookieMaxAge = 7 * 24 * 60 * 60; 

                usernameCookie.setMaxAge(cookieMaxAge);
                passwordCookie.setMaxAge(cookieMaxAge);
                usernameCookie.setHttpOnly(true);
                passwordCookie.setHttpOnly(true);
                usernameCookie.setSecure(true);
                passwordCookie.setSecure(true);
                response.addCookie(usernameCookie);
                response.addCookie(passwordCookie);
            }
            response.sendRedirect("homepage.jsp");
        } else {
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Cookie[] cookies = request.getCookies();

        if (cookies != null) {
            String username = null;
            String password = null;
            for (Cookie cookie : cookies) {
                if (cookie.getName().equals("username")) {
                    username = cookie.getValue();
                } else if (cookie.getName().equals("password")) {
                    password = cookie.getValue();
                }
            }
            if ("kullanici".equals(username) && "sifre".equals(password)) {
                response.sendRedirect("homepage.jsp");
                return;
            }
        }
        response.sendRedirect("login.jsp");
    }
}
