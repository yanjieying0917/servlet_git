package dao;

import pojo.User;
import sun.security.pkcs11.Secmod;
import util.DBUtil;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDao {
    //封装一个方法根据管理员的名字查询管理员的信息
    public User selectAdminInfo(String name){
        User user=null;
      Connection connection= DBUtil.getConn();
      String sql="select * from tb_user where user_name=?";

        try {
            PreparedStatement ps=connection.prepareStatement(sql);
            ps.setString(1,name);
           ResultSet r= ps.executeQuery();

           if(r.next()){
               //取出数据的每个字段值
               Integer id = r.getInt("ID");
               String userName = r.getString("USER_NAME");
               String pwd = r.getString("USER_PASSWORD");
               Integer userType = r.getInt("USER_TYPE");
               Integer userState = r.getInt("USER_STATE");
               //将取出的数据封装到对象
               user=new User();
               user.setId(id);
               user.setUserName(userName);
               user.setUserPassword(pwd);
               user.setUserType(userType);
               user.setUserState(userState);


           }




        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return  user;

    }

    // 查询用户信息 currentPage  当前页数     pageSize  每页显示多少条
    public List<User> userSelect(String id,int currentPage,int pageSize) throws SQLException{
        List<User> list=new ArrayList<>();
       // Connection conn = DBUtil.getConn();
        String sql="";
        /**
         * 在try(创建流对象){}
         * 这种方式 可以自己不关闭流，在try代码结束之后会自动将流关闭
         */
        try(Connection conn = DBUtil.getConn()){

            //偏移量
            int offset=(currentPage-1)*pageSize;

            if(id==null||id.equals("")){
                sql="select * from tb_user limit "+offset+" , "+pageSize;
            }else{
                sql="select * from tb_user where id="+id +" limit "+offset+" , "+pageSize;
            }


            PreparedStatement ps= conn.prepareStatement(sql);
            ResultSet r = ps.executeQuery();
            //遍历结果集
            while(r.next()){
                Integer id1 = r.getInt("ID");
                String userName = r.getString("USER_NAME");
                String pwd = r.getString("USER_PASSWORD");
                Integer userType = r.getInt("USER_TYPE");
                Integer userState = r.getInt("USER_STATE");
                User  user = new User();
                user.setId(id1);
                user.setUserName(userName);
                user.setUserPassword(pwd);
                user.setUserType(userType);
                user.setUserState(userState);
                list.add(user);
            }
        }catch (Exception e){

        }

    return list;
    }

    //根据id删除用户
    public int  deleteUserById(String id){
        int row=0;
        //获取连接对象
        Connection connection=DBUtil.getConn();
        //sql
        String sql="delete from tb_user where id=?";
        //执行sql语句的对象
        try {
            PreparedStatement ps=connection.prepareStatement(sql);
            //给问号赋值
            ps.setInt(1,Integer.parseInt(id));
            //执行
          row= ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
        return row;
    }


    //根据id查询用户信息
    public User  selectUserInfoById(String id){
        Connection conn = DBUtil.getConn();
        User user=null;
        String sql="select * from  tb_user where id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1,Integer.parseInt(id));
            ResultSet r=ps.executeQuery();
            if(r.next()){
                //取出数据的每个字段值
                Integer id1 = r.getInt("ID");
                String userName = r.getString("USER_NAME");
                String pwd = r.getString("USER_PASSWORD");
                Integer userType = r.getInt("USER_TYPE");
                Integer userState = r.getInt("USER_STATE");
                //将取出的数据封装到对象
                user = new User();
                user.setId(id1);
                user.setUserName(userName);
                user.setUserPassword(pwd);
                user.setUserType(userType);
                user.setUserState(userState);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

            return  user;
    }



    //根据id修改用户信息
    public int  updateUserInfoById(User user){
        int row=0;
        Connection conn = DBUtil.getConn();
        String sql="update tb_user set user_password=? where id=?";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1,user.getUserPassword());
            ps.setInt(2,user.getId());
            row=ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
            return  row;
    }

    //获取数据库tb_user表数据条数
    public int getDataTatol(){
        int row=0;
        Connection conn = DBUtil.getConn();
        String sql="select * from tb_user";
        try {
            PreparedStatement ps = conn.prepareStatement(sql);
            ResultSet resultSet = ps.executeQuery();
            while(resultSet.next()){
                row++;
            }


        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                conn.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return  row;
    }

    //查询所有用户
    public List<User> getAllUsers(){
        List<User> list=new ArrayList<>();
        User user=null;
        Connection connection= DBUtil.getConn();
        String sql="select * from tb_user ";

        try {
            PreparedStatement ps=connection.prepareStatement(sql);

            ResultSet r= ps.executeQuery();

            while(r.next()){
                //取出数据的每个字段值
                Integer id = r.getInt("ID");
                String userName = r.getString("USER_NAME");
                String pwd = r.getString("USER_PASSWORD");
                Integer userType = r.getInt("USER_TYPE");
                Integer userState = r.getInt("USER_STATE");
                //将取出的数据封装到对象
                user=new User();
                user.setId(id);
                user.setUserName(userName);
                user.setUserPassword(pwd);
                user.setUserType(userType);
                user.setUserState(userState);


                list.add(user);

            }




        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            try {
                connection.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }

        return  list;


    }






}
