package controller.admin;

import dao.UserDao;
import pojo.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

/**
 * 根据id删除用户信息
 */
@WebServlet(name = "UserDeleteServlet",urlPatterns = "/userDeleteServlet")
public class UserDeleteServlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //接收参数
        String id=req.getParameter("userid");
        //将这id传给UserDao的一个方法 delelteUserById(String userid)
        UserDao userDao=new UserDao();
       int row= userDao.deleteUserById(id);
       if(row>0){
            //重定向
          resp.sendRedirect("/userSelectServlet?currentPage1=1");
         /*  List<User> list = userDao.getAllUsers();
           req.setAttribute("list",list);
           req.getRequestDispatcher("/resources/admin/userlist.jsp").forward(req,resp);*/


       }else {
           //转发到错误页面
           req.getRequestDispatcher("error.jsp").forward(req,resp);
       }




    }
}
