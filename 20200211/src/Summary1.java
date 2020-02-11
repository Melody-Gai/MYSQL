import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import javax.sql.DataSource;
import java.sql.*;

public class Summary1 {

    public static void main(String[] args) throws SQLException {
        //select();
        insert();
    }

    public static void insert() throws SQLException {
        String sql = "INSERT INTO users (username, password) VALUES (?,?)";

        MysqlDataSource mysqlDataSource = new MysqlDataSource();
        mysqlDataSource.setServerName("127.0.0.1");
        mysqlDataSource.setPort(3306);
        mysqlDataSource.setUser("root");
        mysqlDataSource.setPassword("");
        mysqlDataSource.setDatabaseName("java20_0211");
        mysqlDataSource.setUseSSL(false);
        mysqlDataSource.setCharacterEncoding("utf8");

        DataSource dataSource = mysqlDataSource;

        try (Connection con = dataSource.getConnection()) {
            try (PreparedStatement statement = con.prepareStatement(sql,Statement.RETURN_GENERATED_KEYS)) {
                statement.setString(1,"小王");
                statement.setString(2,"123");

                statement.executeUpdate();
                //获取插入数据的id
                try ( ResultSet rs = statement.getGeneratedKeys()) {
                    rs.next();
                    int id = rs.getInt(1);
                    System.out.println(id + " 小王 123");
                }



            }
        }
    }

    /*public static void select() throws SQLException {
        String sql = "SELECT id, username, password FROM users LIMIT ?";
        // String sql = "SELECT id, username, password FROM users WHERE id = ?";

        MysqlDataSource mysqlDataSource = new MysqlDataSource();
        mysqlDataSource.setServerName("127.0.0.1");
        mysqlDataSource.setPort(3306);
        mysqlDataSource.setUser("root");
        mysqlDataSource.setPassword("");
        mysqlDataSource.setDatabaseName("java20_0211");
        mysqlDataSource.setUseSSL(false);
        mysqlDataSource.setCharacterEncoding("utf8");

        DataSource dataSource = mysqlDataSource;

        try (Connection con = dataSource.getConnection()) {
            try (PreparedStatement statement = con.prepareStatement(sql)) {
                statement.setInt(1, 3);//1，2
                //statement.setString(1,"小王");
                //statement.setString(2,"123");

                statement.executeUpdate();

                try (ResultSet rs = statement.executeQuery()) {

                    while (rs.next()) {
                        System.out.println(rs.getInt("id"));
                        System.out.println(rs.getString("username"));
                        System.out.println(rs.getString("password"));
                        System.out.println("=====================================");
                    }
                }
            }
        }
    }*/
}
