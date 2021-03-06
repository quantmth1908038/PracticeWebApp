package com.demo.servlet;

import com.demo.dao.PhoneDao;
import com.demo.entity.PhoneEntity;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "ProductServlet", urlPatterns = {"/product"})
public class ProductServlet extends HttpServlet {

    PhoneDao dao = new PhoneDao();
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            addProduct(request,response);
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<PhoneEntity> products = dao.getAllPhone();
        request.setAttribute("product", products);
        request.getRequestDispatcher("admin-table.jsp").forward(request,response);
    }

    private void addProduct(HttpServletRequest request, HttpServletResponse response) throws SQLException, IOException{
        String name = request.getParameter("name");
        int brandid = Integer.parseInt(request.getParameter("brandid"));
        int price = Integer.parseInt(request.getParameter("price"));
        String description = request.getParameter("description");
        PhoneEntity phone = new PhoneEntity(name, brandid, price, description);
        dao.insertPhone(phone);
        response.sendRedirect("product");
    }
}
