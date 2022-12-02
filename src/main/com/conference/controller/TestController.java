package com.conference.controller;

import com.conference.dao.UserDAO;
import com.conference.model.User;
import com.conference.service.UserService;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.util.List;

@WebServlet({"/", ""})
public class TestController extends HttpServlet {

    private UserDAO userService = new UserService();

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        List<User> users = userService.getAllUsers();

        HttpSession session = req.getSession();
        System.out.println(session.getAttribute("login"));

        req.setAttribute("users", users);
        req.getRequestDispatcher("test.jsp").forward(req, resp);
    }
}
