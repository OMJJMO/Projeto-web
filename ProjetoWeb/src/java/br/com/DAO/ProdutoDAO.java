package br.com.DAO;
import br.com.Model.Produto;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
public class ProdutoDAO {
    Connection con;
    PreparedStatement pstm;
    ResultSet rs;
    ArrayList<Produto> lista = new ArrayList();
    
    public void cadastrarProduto(Produto objProduto){
        
        String sql = "INSERT INTO produto(dt_Fabri,Descri_Prod,dt_Validade,Nome_Prod,Val_Prod,Classi_id,Estoque_id) VALUES(?,?,?,?,?,?,?)";
        
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, objProduto.getDataFab());
            pstm.setString(2, objProduto.getDescricao());
            pstm.setString(3, objProduto.getDataVal());
            pstm.setString(4, objProduto.getNome());
            pstm.setDouble(5, objProduto.getValor());
            pstm.setInt(6, objProduto.getId_classi());
            pstm.setInt(7, objProduto.getId_estoque());
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
        }
    }
    public ArrayList<Produto>listarProduto(){
        
        String sql = "SELECT * FROM produto";
        
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = con.prepareStatement(sql);
            rs = pstm.executeQuery();
            
            while(rs.next()){
                Produto produto = new Produto();
                
                produto.setId_produto(rs.getInt("id_Produto"));
                produto.setDataFab(rs.getString("dt_Fabri"));
                produto.setDescricao(rs.getString("Descri_Prod"));
                produto.setDataVal(rs.getString("dt_Validade"));
                produto.setNome(rs.getString("Nome_Prod"));
                produto.setValor(rs.getDouble("Val_Prod"));
                produto.setId_classi(rs.getInt("Classi_id"));
                produto.setId_estoque(rs.getInt("Estoque_id"));
                
                
                lista.add(produto);
            }
        } catch (Exception e) {
            System.out.println("Listar Produtos: "+e);
        }
        return lista;
    }
    public void excluirProduto(Produto produto){
        String sql = "DELETE FROM produto where id_Produto=?";
        
        con = new ConexaoDAO().conexaoBD();
        
        try {
            pstm = (PreparedStatement) con.prepareStatement(sql);
            pstm.setInt(1, produto.getId_produto());
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    public void atualizarProduto(Produto produto){
        String sql = "UPDATE produto set dt_Fabri=?,Descri_Prod=?,dt_Validade=?,Nome_Prod=?,Val_Prod=?,Classi_id=?,Estoque_id=? where id_Produto=?";
        
        con = new ConexaoDAO().conexaoBD();
        try {
            pstm = con.prepareStatement(sql);
            pstm.setString(1, produto.getDataFab());
            pstm.setString(2, produto.getDescricao());
            pstm.setString(3, produto.getDataVal());
            pstm.setString(4, produto.getNome());
            pstm.setDouble(5, produto.getValor());
            pstm.setInt(6, produto.getId_classi());
            pstm.setInt(7, produto.getId_estoque());
            pstm.setInt(8, produto.getId_produto());
            pstm.execute();
            pstm.close();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
}
