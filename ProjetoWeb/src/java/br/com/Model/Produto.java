package br.com.Model;

public class Produto {
    private int id_produto;
    private String dataFab;
    private String descricao;
    private String dataVal;
    private String nome;
    private double valor;
    private int id_classi;
    private int id_estoque;

    public int getId_produto() {
        return id_produto;
    }

    public void setId_produto(int id_produto) {
        this.id_produto = id_produto;
    }

    public String getDataFab() {
        return dataFab;
    }

    public void setDataFab(String dataFab) {
        this.dataFab = dataFab;
    }

    public String getDescricao() {
        return descricao;
    }

    public void setDescricao(String descricao) {
        this.descricao = descricao;
    }

    public String getDataVal() {
        return dataVal;
    }

    public void setDataVal(String dataVal) {
        this.dataVal = dataVal;
    }

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public double getValor() {
        return valor;
    }

    public void setValor(double valor) {
        this.valor = valor;
    }

    public int getId_classi() {
        return id_classi;
    }

    public void setId_classi(int id_classi) {
        this.id_classi = id_classi;
    }

    public int getId_estoque() {
        return id_estoque;
    }

    public void setId_estoque(int id_estoque) {
        this.id_estoque = id_estoque;
    }
    
    
    
}
