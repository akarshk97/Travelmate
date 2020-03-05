package Connect;

import java.sql.Connection;
import java.sql.DriverManager;

/**
 *
 * @author G5
 */
public class DbConnect {

    static Connection con = null;

    public static void main(String args[]) {

        DbConnect.mysqlConnect();
        if (con != null) {
            System.out.println("Connected Successfully");
        }
    }

    public static Connection oracleConnect() {
        try {
            Class.forName("oracle.jdbc.driver.OracleDriver");
            con = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE", "svcr", "svcr");
            System.out.println("Oracle Connected Successfully");
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return con;
    }

    public static Connection mysqlConnect() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/travelmate", "root", "root");
            System.out.println("MySql Conncted Successfully");
        } catch (Exception e) {
            System.out.println(e.toString());

        }
        return con;
    }

    public static Connection sqlServerConnect() {
        try {
            Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
            con = DriverManager.getConnection("jdbc:odbc:vcr", "", "");
            System.out.println("SqlServer Connected Successfully");
        } catch (Exception e) {
            System.out.println(e.toString());
        }
        return con;
    }
}

