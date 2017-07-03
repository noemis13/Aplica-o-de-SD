package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import model.Usuario;

public class DAO {

    private static final String url = "jdbc:mysql://localhost:3306/";
    private static final String dbName = "sd";
    private static final String driver = "com.mysql.jdbc.Driver";
    private static final String userName = "root";
    private static final String password = "root";

    public static boolean validaUsuario(String name, String pass) {
        boolean status = false;
        Connection conexao = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName(driver).newInstance();
            conexao = DriverManager.getConnection(url + dbName, userName, password);

            pst = conexao.prepareStatement("select email, senha from  usuario where email=? and senha=?");
            pst.setString(1, name);
            pst.setString(2, pass);
            System.out.println(" usuario " + name);
            System.out.println(" senha " + pass);

            rs = pst.executeQuery();
            status = rs.next();

        } catch (Exception e) {
            System.out.println(e);

        } finally {
            if (conexao != null) {
                try {
                    conexao.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (pst == null) {
                try {
                    pst.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (rs != null) {
                try {
                    rs.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return status;
    }

    public static boolean verificaUsuario(String email) throws ClassNotFoundException, SQLException, InstantiationException, IllegalAccessException {
        
        System.out.println("EMAIL ------- " + email);
        Connection conexao = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        Class.forName(driver).newInstance();
        conexao = DriverManager.getConnection(url + dbName, userName, password);
        pst = conexao.prepareStatement("select * from usuario where email='" + email + "'");
        rs = pst.executeQuery();
//        boolean status = rs.next();
        
        if (rs.next()) {
            System.out.println("RETORNA TRUE");
            return true;
        } else {
            System.out.println("RETORNA FALSE");
            return false;
        }
    }

    public static boolean insereUsuario(Usuario u) {
        Connection conexao = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName(driver).newInstance();
            conexao = DriverManager.getConnection(url + dbName, userName, password);
            Statement statement = conexao.createStatement();
            String sql = "INSERT INTO usuario (nome, email, senha) VALUES ('" + u.getNome() + "','" + u.getEmail() + "','" + u.getSenha() + "')";

            statement.execute(sql);
            statement.close();

            return true;
        } catch (Exception ex) {
            System.out.println("Erro : " + ex.getMessage());
            return false;
        }

    }

    public static Usuario buscaNomeUsuario(String email) throws ClassNotFoundException, InstantiationException, IllegalAccessException, SQLException {
        Connection conexao = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        Class.forName(driver).newInstance();
        conexao = DriverManager.getConnection(url + dbName, userName, password);
        pst = conexao.prepareStatement("select nome, senha, email from usuario where email = " + "'" + email + "'");

        rs = pst.executeQuery();
        String aux = "";
        Usuario u = new Usuario();
        while (rs.next()) {
            u.setNome(rs.getString("nome"));
            u.setSenha(rs.getString("senha"));
            u.setEmail(rs.getString("email"));
        }
        return u;
    }

    public static boolean atualizarUsuario(String nome, String senha, String email) {
//        System.out.println("ATUALIZA USUARIO --------");
//        System.out.println("NOME " + nome);
//        System.out.println("SENHA " + senha);
//        System.out.println("EMAIL " + email);
        Connection conexao = null;
        PreparedStatement pst = null;
        ResultSet rs = null;

        try {
            Class.forName(driver).newInstance();
            conexao = DriverManager.getConnection(url + dbName, userName, password);
            try (Statement statement = conexao.createStatement()) {
                String sql = "UPDATE usuario SET nome='" + nome + "', senha='" + senha + "' where email = '" + email + "'";

                statement.execute(sql);
            }
            return true;

        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException | SQLException ex) {
            System.out.println("Erro : " + ex.getMessage());
            return false;
        }
    }

}
