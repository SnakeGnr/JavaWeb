/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Sammy Guergachi <sguergachi at gmail.com>
 */
public class CarroDao {

    private Connection con;

    public CarroDao() throws ClassNotFoundException {
        try {
            this.con = new ConexaoBD().getConnection();
            System.out.println("Conectado!");
        } catch (ClassNotFoundException e) {
            System.out.println(e.getMessage());
            System.out.println("Erro na Conexão.");
        }

    }

    public void Cadastra(Carro car) {

        String sql = "Insert into Carro (marca, modelo, ano, valor)"
                + " values (?,?,?,?) ";

        try {
            PreparedStatement st = con.prepareStatement(sql);

            st.setString(1, car.getMarca());
            st.setString(2, car.getModelo());
            st.setInt(3, car.getAno());
            st.setDouble(4, car.getValor());

            st.execute();
            con.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }
    }

    public List<Carro> consulta() {

        try {
            //Cria um ArayList para receber os carros cadastrados
            List<Carro> carros = new ArrayList<Carro>();
            PreparedStatement st = this.con.prepareStatement("SELECT * FROM carro");
            //Executa uma consulta 
            ResultSet rs = st.executeQuery();

            while (rs.next()) {
                //Percorre Linha por Linha para preencher o Objeto
                Carro car = new Carro();
                car.setId(rs.getInt("id"));
                car.setMarca(rs.getString("marca"));
                car.setModelo(rs.getString("modelo"));
                car.setAno(rs.getInt("ano"));
                car.setValor(rs.getDouble("valor"));

                carros.add(car);
            }
            rs.close();
            st.close();

            //Mostra o ArrayList dps de receber os carros do BD
            return carros;

        } catch (SQLException e) {
            throw new RuntimeException(e);

        }
    }
         public void remove(Carro car) {
        try {
            PreparedStatement st = con.prepareStatement("delete from carro where id =?");
            st.setInt(1, car.getId());
            st.execute();
            st.close();
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

    }
         public void altera(Carro car){
             String sql = "update carro set marca = ?, modelo =?,"
                     + "ano=?, valor=?  where id = ? ";
             
             try{
                 PreparedStatement st = con.prepareStatement(sql);
                 
                 st.setString(1, car.getMarca());
                 st.setString(2, car.getModelo());
                 st.setInt(3, Integer.valueOf(car.getAno()));
                 st.setDouble(4,Double.valueOf(car.getValor()));
                 st.setInt(5, Integer.valueOf(car.getId()));
                 st.execute();
                 st.close();
             }catch(SQLException e){
                 throw new RuntimeException(e);
             }
         }
         
    }

   

