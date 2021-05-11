package com.demo.servlet;

import com.demo.dao.PhoneDao;
import com.demo.entity.PhoneEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "PhoneServlet", urlPatterns = {"/phone"})
public class PhoneServlet extends HttpServlet {

    PhoneDao dao = new PhoneDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneEntity> products = dao.getAllPhone();
        request.setAttribute("product", products);
        request.getRequestDispatcher("admin-table.jsp").forward(request,response);
    }
}
