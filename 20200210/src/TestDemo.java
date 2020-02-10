import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class TestDemo {
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        Class.forName("com.mysql.jdbc.Driver");

        String url = "jdbc:mysql://127.0.0.1:3306/java20_0210?useSSL=false&characterEconding=utf8";
        String user = "root";
        String password = "";
        Connection connection = DriverManager.getConnection(
                url,user,password
        );

        Statement statement = connection.createStatement();
        String sql = "INSTER INTO users (id, name) VALUES (1, '盖飞宇'），（2，‘宋雨荷'）,(3, '郭晨曦')";
        statement.executeUpdate(sql);
        statement.close();

        Statement statement1 = connection.createStatement();
        String sq1 = "SELECT id, name FROM users";
        ResultSet resultSet = statement.executeQuery(sq1);

        List<String> nameList = new ArrayList<>();
        while(resultSet.next()) {
            int id = resultSet.getInt(1);
            String name = resultSet.getString("name");
            nameList.add(name);

            System.out.println(id + ", " + name);
        }
        resultSet.close();

        statement.close();

        connection.close();
    }
}
