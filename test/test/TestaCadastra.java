/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package test;

import Model.Carro;
import Model.CarroDao;
import java.sql.SQLException;

/**
 * 
 * @author SnakeGnr
 */
public class TestaCadastra {

    public static void main(String[] args) throws ClassNotFoundException {
        
        Carro c = new Carro();
        c.setMarca("Chevrolet");
        c.setModelo("Opala");
        c.setAno(1989);
        c.setValor(20000);
        
        CarroDao dao = new CarroDao();
       
        dao.Cadastra(c);
        
        
        
    }
    
}
