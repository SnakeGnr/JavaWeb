/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package Model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * 
 * @author SnakeGnr
 */
public class ConexaoBD {
private String caminho = "jdbc:postgresql://localhost:5432/Adao";
    private String driver = "org.postgresql.Driver";
    private String usuario = "postgres";
    private String senha = "aluno";
    
    public Connection getConnection () throws ClassNotFoundException{
        try {
            Class.forName(driver);
            return DriverManager.getConnection(caminho, usuario, senha);
            
        } catch (SQLException e) {
            System.out.println("erro no Banco de Dados");
            throw new RuntimeException(e);
        }
    }
}