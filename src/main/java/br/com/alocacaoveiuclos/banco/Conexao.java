package br.com.alocacaoveiuclos.banco;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Conexao {
	
	 public static Connection receberConexao() throws ClassNotFoundException {
	        
        Connection con = null;
        
        try {
        	Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost/intercardb?useSSL=false", "root", "toor");
            System.out.println("Conectado com sucesso.");
        } catch (SQLException e) {
            e.printStackTrace();
            System.out.println("Erro ao conectar ao banco de dados.");
        }
        
        return con;
        
    }
}
