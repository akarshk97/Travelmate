/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connect.Model;
import com.mysql.jdbc.ResultSet;
import com.sun.org.apache.xpath.internal.operations.Mod;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author G5
 */
public class Request extends HttpServlet {

    /**
     * Processes requests for both HTTP
     * <code>GET</code> and
     * <code>POST</code> methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String seats = null;int available;
        String s1=request.getParameter("t1");
        String s2=request.getParameter("t2");
        String s3=request.getParameter("t3");
        String s4=request.getParameter("t4");
        String s5=request.getParameter("t5");
        String s6=request.getParameter("t6");
        try{
            int i= Model.inupdel("insert into request values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"','"+s6+"')");
            if(i>0)
            {
                response.sendRedirect("Request.jsp?user=a");
               
            }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        try{
            ResultSet rs;
            rs=(ResultSet) Model.select("select seats from newpool where user='"+s1+"'");
            if(rs.next())
            {
                 seats=rs.getString(1);
            }
            
            int tseats=Integer.parseInt(seats);
            int aseats=Integer.parseInt(s5);
            available=tseats-aseats;
            String s=String.valueOf(available);
          int i=Model.inupdel("update newpool set seats='"+s+"' where user='"+s1+"'")  ;
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP
     * <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP
     * <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}
