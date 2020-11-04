package pojo;

import java.io.Serializable;

/**
 * 根据tb_user表的字段封装到这类的属性
 * 建议以后编写实体类的时候，要实现一个序列化接口
 * 这是一种开发的标准  可以生成这个序列化的版本号
 */
public class User implements Serializable {
    private  Integer id;
    private  String userName;
    private String userPassword;
    private Integer userType;
    private Integer userState;


    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public Integer getUserType() {
        return userType;
    }

    public void setUserType(Integer userType) {
        this.userType = userType;
    }

    public Integer getUserState() {
        return userState;
    }

    public void setUserState(Integer userState) {
        this.userState = userState;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userType=" + userType +
                ", userState=" + userState +
                '}';
    }
}
