/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Email;

/**
 *
 * @author Maisa
 */
@WebServlet(name = "EmailServlet", urlPatterns = {"/EmailServlet"})
public class EmailServlet extends HttpServlet {

    private String host;
    private String port;
    private String user;
    private String pass;

    public void init() {
        ServletContext context = getServletContext();
        host = context.getInitParameter("host");
        port = context.getInitParameter("port");
        user = context.getInitParameter("user");
        pass = context.getInitParameter("pass");
    }

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
        String name = request.getParameter("name");
        String recipient = request.getParameter("recipient");
        String subject = request.getParameter("subject");
        String content = "Olá eu sou o(a) " + name + ", \n " + request.getParameter("content");

        String resultMessage = "";

        try {
            Email.sendEmail(host, port, user, pass, recipient, subject,
                    content);
            resultMessage = "Email enviado com sucesso";
        } catch (Exception ex) {
            ex.printStackTrace();
            resultMessage = "Algo deu errado: " + ex.getMessage();
//            request.setAttribute("mensagemEmailErro", "Algo deu errado! " + ex.getMessage());
        } finally {
            request.setAttribute("Message", resultMessage);
//            request.setAttribute("mensagemEmail", "Email enviado com sucesso!");
            getServletContext().getRequestDispatcher("/email.jsp").forward(
                    request, response);
        }
    }
}
