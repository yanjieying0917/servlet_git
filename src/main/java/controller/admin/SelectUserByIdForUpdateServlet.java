package controller.admin;

import dao.UserDao;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * 根据id查询当前用户信息
 */
@WebServlet(name = "SelectUserByIdForUpdateServlet",urlPatterns = "/selectUserByIdForUpdate")
public class SelectUserByIdForUpdateServlet  extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            //接收参数
        String id=req.getParameter("userid");
        //将这个id传给USerDao的selectUserInfoById(String id)
        UserDao dao =new UserDao();
        User user=dao.selectUserInfoById(id);
        //将user对象绑定到HttpServletRequest 对象  转发到用户信息修改页面
        req.setAttribute("u",user);
        req.getRequestDispatcher("/admin/userupdate.jsp").forward(req,resp);


    }
}
