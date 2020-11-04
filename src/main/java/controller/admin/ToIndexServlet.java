package controller.admin;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 *点击 网站首页的按钮 跳转到首页
 */
@WebServlet("/toDefault")
public class ToIndexServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            System.out.println("请求进来");
            req.getRequestDispatcher("view/default.jsp").forward(req,resp);
    }
}
