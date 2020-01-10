import java.sql.Connection;
import java.sql.Driver;
import java.sql.DriverManager;

public class precticeagain {
    public static void main(String[] args) throws ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        Connection connection = DriverManager.getConnection(
                url:"jdbc:mysql://127.0.0.1/java20191219?userSSL=false",
                user:
        );

    }

}
