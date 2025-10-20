package iuh.fit.se.controllers;

import iuh.fit.se.dao.DIENTHOAIDAO;
import iuh.fit.se.dao.Impl.DIENTHOAIDAPImpl;
import iuh.fit.se.entities.DIENTHOAI;
import jakarta.annotation.Resource;
import jakarta.servlet.ServletConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

@WebServlet(name = "dienThoaiController", urlPatterns = "/phones")
public class DIENTHOAIController extends HttpServlet {
    @Resource(name = "jdbc/phone")
    private DataSource datasource;

    private DIENTHOAIDAO dienthoaiDAO;

    @Override
    public void init(ServletConfig config) {
        this.dienthoaiDAO = new DIENTHOAIDAPImpl(datasource);
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            req.setAttribute("products", dienthoaiDAO.getAllPhone());
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("index.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        this.doGet(req, resp);
    }

}
