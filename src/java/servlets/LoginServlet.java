package servlets;

import dao.DAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.net.URLEncoder;
import java.sql.Date;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.GregorianCalendar;
import java.util.TimeZone;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Usuario;

/**
 *
 * @author maa
 */
@WebServlet(name = "LoginServlet", urlPatterns = {"/LoginServlet"})
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op = request.getParameter("op");

        if ("sair".equals(op)) {
            HttpSession session = request.getSession(false);
            if (session != null) {
                session.invalidate();
            }
            response.sendRedirect("login.jsp");
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String op = request.getParameter("op");

        HttpSession session = request.getSession();

        if (op.equals("Login")) {
            String n = request.getParameter("username");
            String p = request.getParameter("userpass");

            if (DAO.validaUsuario(n, p)) {
                Usuario u = null;
                try {
                    u = DAO.buscaNomeUsuario(n);
                } catch (ClassNotFoundException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (InstantiationException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (IllegalAccessException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                } catch (SQLException ex) {
                    Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
                }
                session.setAttribute("nome", u.getNome());
                session.setAttribute("email", u.getEmail());
                session.setAttribute("senha", u.getSenha());
                session.setAttribute("isLogado", true);
                response.sendRedirect("home.jsp");

            } else {
                request.setAttribute("erroLogin", "Usuário e/ou senha incorretos!");
                RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                rd.forward(request, response);
            }

        } else if (op.equals("editarPerfil")) {
            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            if (DAO.atualizarUsuario(nome, senha, email)) {
                session.setAttribute("nome", nome);
                session.setAttribute("senha", senha);
                request.setAttribute("perfilEditar", "Perfil atualizado com sucesso...");
                RequestDispatcher rd = request.getRequestDispatcher("editar_perfil.jsp");
                rd.forward(request, response);
            } else {
                request.setAttribute("erroEditar", "Algo deu errado...");
                RequestDispatcher rd = request.getRequestDispatcher("editar_perfil.jsp");
                rd.forward(request, response);
            }

        } else {

            String nome = request.getParameter("nome");
            String email = request.getParameter("email");
            String senha = request.getParameter("senha");

            System.out.println("Nome : " + nome);
            System.out.println("Email : " + email);
            System.out.println("Senha : " + senha);

            Usuario u = new Usuario();
            u.setNome(nome);
            u.setEmail(email);
            u.setSenha(senha);

            try {
                if (DAO.verificaUsuario(email)) {
                    request.setAttribute("mensagemCadastrado", "Usuário já cadastrado!");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                } else {
                    DAO.insereUsuario(u);
                    request.setAttribute("mensagemCadastrado", "Usuário cadastrado com sucesso!");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.forward(request, response);
                }
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (SQLException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (InstantiationException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            } catch (IllegalAccessException ex) {
                Logger.getLogger(LoginServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }

    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
