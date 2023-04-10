package br.com.DAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
public class ConexaoDAO {
    public Connection conexaoBD(){
        Connection conexao = null;
        try {
            
            String url = "jdbc:mysql://localhost:3306/projeto?user=root&password=";
            conexao = DriverManager.getConnection(url);
        } catch (Exception e) {
            Logger.getLogger(ConexaoDAO.class.getName()).log(Level.SEVERE, null, e);
        }
        return conexao;
    }
}
