package db;

import org.junit.Test;
import util.DBUtil;

import java.sql.Connection;

public class TestDB {


    //单元测试 在方法上面使用注解进行测试
    @Test
    public  void test01(){
        Connection connection=DBUtil.getConn();
        System.out.println(connection);

    }
}
