/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import Connect.Model;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author G5
 */
public class newcasualpool extends HttpServlet {

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
        String s5 = "", username="";
        String s9=request.getParameter("t8");
        String s1 = request.getParameter("t1");
        String s2 = request.getParameter("t2");
        String s3 = request.getParameter("t3");
        String s4 = request.getParameter("t4");
        String atime = "";
             atime=   request.getParameter("t5");
        if ("null".equalsIgnoreCase(atime)) {
            s5 = "NoReturn";
        }
        else
            s5=atime;
        String s6 = request.getParameter("t6");
        String s8 = "";

        HttpSession hs = request.getSession();
        username = (String) hs.getAttribute("user");
        System.out.println("hi" + username);
        

            try {
                int i = Model.inupdel("insert into casualpool values('"+username+"','" + s9 + "','" + s1 + "','" + s2 + "','" + s3 + "','" + s4 + "','" + s5 + "')");
                if (i > 0) {
                    out.println("new pool created");
                }
            } catch (Exception e) {
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
