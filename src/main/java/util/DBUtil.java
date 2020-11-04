package util;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.Properties;

/*

连接数据的类

 */
public class DBUtil {

    private static  String username;
    private static String password;
    private static  String url;
    private static  String driver;

    static {

        try {
            InputStream in = DBUtil.class.getClassLoader().getResourceAsStream("db.properties");

          //  FileInputStream in=new FileInputStream("db.properties");
            System.out.println("in:"+in);
            Properties p=new Properties();
            p.load(in);

            username = p.getProperty("db.username");
            password=p.getProperty("db.password");
            url=p.getProperty("db.url");
            driver=p.getProperty("db.driver");

            System.out.println(username);
            System.out.println(password);
            System.out.println(url);
            System.out.println(driver);

        } catch (IOException e) {
            e.printStackTrace();
        }

    }

    //封装一个连接方法
    public  static Connection getConn(){

        Connection conn=null;

        try {
            //加载驱动
            Class.forName(driver);
            conn = DriverManager.getConnection(url, username, password);
            System.out.println("...........................");
            System.out.println(conn);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return conn;
    }




}
