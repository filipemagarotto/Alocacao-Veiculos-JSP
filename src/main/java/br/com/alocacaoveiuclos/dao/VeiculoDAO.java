package br.com.alocacaoveiuclos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import br.com.alocacaoveiculos.model.Veiculo;
import br.com.alocacaoveiuclos.banco.Conexao;

public class VeiculoDAO {

	public List<Veiculo> getVeiculosByFilter(String cidadeRetirada, Date dataRetirada, Date dataDevolucao) throws ParseException {
		List<Veiculo> lstVeiculos = new ArrayList<Veiculo>();
		Connection con = null;
		
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		String sql = "SELECT * "
				+ "FROM veiculos "
				+ "WHERE cidade_retirada = ?";
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			preparador.setString(1, cidadeRetirada);
			
            ResultSet resultado = preparador.executeQuery();
            
            while(resultado.next()) {
            	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
            	System.out.println(resultado.getString("id"));
            	Date dateRetirada = formatter. parse(resultado.getString("data_retirada"));
            	Date dateDevolucao = formatter. parse(resultado.getString("data_retorno"));
            	
            	if( !(((dateRetirada.after(dataRetirada) || dateRetirada.equals(dataRetirada)) && (dateDevolucao.before(dataDevolucao) || dateRetirada.equals(dataDevolucao))) || 
            			((dateRetirada.before(dataRetirada) || dateRetirada.equals(dataRetirada)) && (dateDevolucao.after(dataDevolucao) || dateRetirada.equals(dataDevolucao))))) {
            		Veiculo veiculo = new Veiculo();
            		veiculo.setId(Integer.valueOf(resultado.getString("id")));
            		veiculo.setIdProvedor(Integer.valueOf(resultado.getString("id_provedor")));
            		veiculo.setCidadeRetirada(resultado.getString("cidade_retirada"));
            		veiculo.setEmbreagemVeiculo(resultado.getString("embreagem_veiculo"));
            		veiculo.setValorAluguel(resultado.getDouble("valor_aluguel"));
            		veiculo.setModeloVeiculo(resultado.getString("modelo_veiculo"));
            		veiculo.setCorVeiculo(resultado.getString("cor_veiculo"));
            		veiculo.setAnoVeiculo(resultado.getInt("ano_veiculo"));
            		veiculo.setPlacaVeiculo(resultado.getString("placa_veiculo"));
            		veiculo.setMarcaVeiculo(resultado.getString("marca_veiculo"));
            		veiculo.setKmRodado(resultado.getInt("km_veiculo"));
            		veiculo.setArCondicionado(resultado.getString("ar_veiculo"));
            		veiculo.setMotorVeiculo(resultado.getString("motor_veiculo"));
            		
            		lstVeiculos.add(veiculo);
            	}
            }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return lstVeiculos;
	}
	
	public List<Veiculo> getVeiculosCustomFilters(String marca, 
			String cambio, double valor, String arCondicionado, String motor, String cidadeRetirada,
			Date dataRetirada, Date dataDevolucao) throws SQLException, ParseException {
		
		List<Veiculo> lstVeiculos = new ArrayList<Veiculo>();
		Connection con = null;
		
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		String sql = "SELECT * "
				+ "FROM veiculos "
				+ "WHERE cidade_retirada = ? AND valor_aluguel <= ?";
		
		if(marca!=null && !marca.equals("Selecione a marca")) sql+=" AND marca_veiculo = ?";
		if(cambio!=null && !cambio.equals("Selecione o cambio")) sql+=" AND embreagem_veiculo = ?";
		if(arCondicionado!=null && !arCondicionado.equals("Ar-Condicionado")) sql+=" AND ar_veiculo = ?";
		if(motor!=null && !motor.equals("Tipo do Motor")) sql+= " AND motor_veiculo = ?";
		System.out.println("sql " + sql);
		
		PreparedStatement preparador = con.prepareStatement(sql);

		preparador.setString(1, cidadeRetirada);
		preparador.setDouble(2, valor);

		int preparedStatementIndex = 3;
		if(marca != null && !marca.equals("Selecione a marca")) {
			preparador.setString(preparedStatementIndex, marca);
			preparedStatementIndex++;
		}
		if(cambio != null && !cambio.equals("Selecione o cambio")) {
			preparador.setString(preparedStatementIndex, cambio);
			preparedStatementIndex++;
		}
		if(arCondicionado != null && !arCondicionado.equals("Ar-Condicionado")) {
			preparador.setString(preparedStatementIndex, arCondicionado);
			preparedStatementIndex++;
		}
		if(motor != null && !motor.equals("Tipo do Motor")) {
			preparador.setString(preparedStatementIndex, motor);
			preparedStatementIndex++;
		}
		
        ResultSet resultado = preparador.executeQuery();
        
        while(resultado.next()) {
        	SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd");
        	Date dateRetirada = formatter.parse(resultado.getString("data_retirada"));
        	Date dateDevolucao = formatter.parse(resultado.getString("data_retorno"));
        	
        	if( !(((dateRetirada.after(dataRetirada) || dateRetirada.equals(dataRetirada)) && (dateDevolucao.before(dataDevolucao) || dateRetirada.equals(dataDevolucao))) || 
        			((dateRetirada.before(dataRetirada) || dateRetirada.equals(dataRetirada)) && (dateDevolucao.after(dataDevolucao) || dateRetirada.equals(dataDevolucao))))) {
	        	Veiculo veiculo = new Veiculo();
	    		veiculo.setId(Integer.valueOf(resultado.getString("id")));
	    		veiculo.setIdProvedor(Integer.valueOf(resultado.getString("id_provedor")));
	    		veiculo.setCidadeRetirada(resultado.getString("cidade_retirada"));
	    		veiculo.setEmbreagemVeiculo(resultado.getString("embreagem_veiculo"));
	    		veiculo.setValorAluguel(resultado.getDouble("valor_aluguel"));
	    		veiculo.setModeloVeiculo(resultado.getString("modelo_veiculo"));
	    		veiculo.setCorVeiculo(resultado.getString("cor_veiculo"));
	    		veiculo.setAnoVeiculo(resultado.getInt("ano_veiculo"));
	    		veiculo.setPlacaVeiculo(resultado.getString("placa_veiculo"));
	    		veiculo.setMarcaVeiculo(resultado.getString("marca_veiculo"));
	    		veiculo.setKmRodado(resultado.getInt("km_veiculo"));
	    		veiculo.setArCondicionado(resultado.getString("ar_veiculo"));
	    		veiculo.setMotorVeiculo(resultado.getString("motor_veiculo"));
	    		
	    		lstVeiculos.add(veiculo);
        	}
        }
		
		return lstVeiculos;
	}
}
