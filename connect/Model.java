package Connect;

import java.sql.Connection;
import java.sql.Statement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author G5
 */
public class Model {

    static Connection con = Connect.DbConnect.mysqlConnect();
    static Statement st = null;
    static ResultSet rs = null;

    public static void main(String args[]) {
        System.out.println("Welcome To CommonCode");
    }

    public static int inupdel(String que) throws Exception {
        int i = 0;
        st = con.createStatement();
        i = st.executeUpdate(que);
        return i;
    }

    public static ResultSet select(String que) throws Exception {
        st = con.createStatement();
        rs = st.executeQuery(que);
        return rs;

    }

    public static String getValue(String query) throws Exception {
        String val = "";int vid=0;
        rs = Connect.Model.select(query);
        if (rs.next()) {
            vid =rs.getInt(1);   
            System.out.println("common code " + query);
        }
        return vid+ "123";
    }

  
    

    public int getId(String sql) {
        int i = 0;
        try {
            st = con.createStatement();
            rs = st.executeQuery(sql);
            if (rs.next()) {
                i = rs.getInt(1);
            }

        } catch (Exception e) {
            System.out.println(e);
        }
        return (i+1);

    }
    
     public static String createSequenceValue(String Query, String seq) {
       String value = null;int n;
        try {
            value = Connect.Model.getValue(Query);
            if (value == null) {
                value = seq;
            }
            String front = value.substring(0, value.indexOf("0"));
            String back = value.substring(value.indexOf("0"), value.length());
            int num = Integer.parseInt(back) + 1;
            System.out.println(front);
            System.out.println(back);
            back = "" + num;
            System.out.println(back);
            if (back.length() == 1) {
                back = "0000" + back;
            } else if (back.length() == 2) {
                back = "000" + back;
            } else if (back.length() == 3) {
                back = "00" + back;
            } else if (back.length() == 4) {
                back = "0" + back;
            }
            value = front + back;
           

        } catch (Exception e) {
            System.out.println(e);
        }
        return value;
       
    }

    
    
    public int executeUpdate(String que)
    {
        int val=0;
       
        try {
            
           
            con.createStatement();
          val=st.executeUpdate(que);
            
            
        } catch (SQLException ex) {
            Logger.getLogger(Model.class.getName()).log(Level.SEVERE, null, ex);
        }
        return val;
    }

    
    public ResultSet executeQuery(String que)
    {
        try {
            con.createStatement();
           rs= st.executeQuery(que);
            
           
          
        } catch (SQLException ex) {
            Logger.getLogger(Model.class.getName()).log(Level.SEVERE, null, ex);
        }
         return rs;
    }
    
}
