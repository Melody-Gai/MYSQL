import com.mysql.jdbc.Statement;
import com.mysql.jdbc.jdbc2.optional.MysqlDataSource;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class Summary1 {
    public static void main(String[] args) throws SQLException {
        insert();
    }
    public static void insert () throws SQLException {
        String sql = "INSERT INTO users (username, password) VALUES(?, ?)";

        MysqlDataSource mysqlDataSource = new MysqlDataSource();
        mysqlDataSource.setServerName("127.0.0.1");
        mysqlDataSource.setPort(3306);
        mysqlDataSource.setUser("root");
        mysqlDataSource.setPassword("");
        mysqlDataSource.setDatabaseName("java20_0213");
        mysqlDataSource.setUseSSL(false);
        mysqlDataSource.setCharacterEncoding("utf8");

        DataSource dataSource = mysqlDataSource;

        try(Connection con = dataSource.getConnection()) {
            try(PreparedStatement statement = con.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS)) {
                statement.setString(1,"xiaowang");
                statement.setString(2,"123");

            }

        }
    }
    public static void select() throws SQLException {
        String sql = "SELECT id, username, password FROM users LIMIT ?";

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
                statement.setInt(1, 3);

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
    }
}
