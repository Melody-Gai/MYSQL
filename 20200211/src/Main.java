import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");

        String url = "jdbc:mysql://127.0.0.1:3306/java20_0210?useSSL=false&characterEncoding=utf8";
        String user = "root";
        String password = "";
        Connection connection = DriverManager.getConnection(
                url,user,password
        );
        //插入一些数据，供SELECT用
        {
            Statement statement = connection.createStatement();
            String sql = "INSERT INTO users(id, name) VALUES(1,'盖飞宇')，(2,'宋雨荷'),(3,'郭晨曦')";
            statement.executeUpdate(sql);
            statement.close();
        }
        //执行SELECT语句
        {
            Statement statement = connection.createStatement();
            String sql = "SELECT id, name FROM users";
            ResultSet resultSet = statement.executeQuery(sql);

            List<String> nameList = new ArrayList<>();
            while(resultSet.next()) {
                int id = resultSet.getInt(1);
                String name = resultSet.getString("name");
                nameList.add(name);

                System.out.println(id + "," + name);
            }
            resultSet.close();

            statement.close();
        }
        {
            Statement statement = connection.createStatement();
            String sql = "INSERT INTO users (id,name) VALUES (1,'陈沛鑫')";
            statement.executeUpdate(sql);
            statement.close();
        }

        {
            Statement statement = connection.createStatement();
            String sql = "UPDATE users SET name = '高博' WHERE id = 1";
            statement.executeUpdate(sql);
            statement.close();
        }

        {
            Statement statement = connection.createStatement();
            String sql = "DELETE FROM users WHERE id = 1";
            statement.executeUpdate(sql);
            statement.close();
        }

        connection.close();

    }
}
