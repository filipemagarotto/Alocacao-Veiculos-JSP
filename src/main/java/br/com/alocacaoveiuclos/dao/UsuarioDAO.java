package br.com.alocacaoveiuclos.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import br.com.alocacaoveiculos.model.Usuario;
import br.com.alocacaoveiuclos.banco.Conexao;

public class UsuarioDAO {
	
	public boolean verificaUsuarioExistente(String email) {

		Connection con = null;
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			System.out.println("error conexao");
			e1.printStackTrace();
		}
		
		String sql = "SELECT * FROM usuarios WHERE email = ?";
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			
			preparador.setString(1, email);
			
            ResultSet resultado = preparador.executeQuery();
            
            if(resultado.next()) {
            	return true;
            } else {
            	return false;
            }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return false;
	}
	
	public boolean criarUsuarioClient(Usuario usuario) {
		
		Connection con = null;
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		Boolean success = false;
		
		String sql = "INSERT INTO usuarios "
				+ "("
				+ "tipo_usuario, "
				+ "cpf, "
				+ "nome_completo, "
				+ "cep, "
				+ "imagem_perfil, "
				+ "cnh, "
				+ "complemento, "
				+ "bairro, "
				+ "endereco, "
				+ "uf,"
				+ "cidade,"
				+ "email,"
				+ "senha,"
				+ "data_criacao,"
				+ "data_nascimento"
				+ ") "
				+ "VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			
			preparador.setString(1, usuario.getTipoUsuario());
			preparador.setString(2, usuario.getCpf());
			preparador.setString(3, usuario.getNomeCompleto());
			preparador.setString(4, usuario.getCep());
			preparador.setString(5, usuario.getImagemPerfil());
			preparador.setString(6, usuario.getCnh());
			preparador.setString(7, usuario.getComplemento());
			preparador.setString(8, usuario.getBairro());
			preparador.setString(9, usuario.getEndereco());
			preparador.setString(10, usuario.getUf());
			preparador.setString(11, usuario.getCidade());
			preparador.setString(12, usuario.getEmail());
			preparador.setString(13, usuario.getSenha());
			preparador.setDate(14, new java.sql.Date(((java.util.Date) usuario.getDataCriacao()).getTime()));
			preparador.setDate(15, new java.sql.Date(((java.util.Date) usuario.getDataNascimento()).getTime()));
			
			preparador.execute();
            
			success = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		System.out.println(success);
		return success;
	}
	
	public boolean criarUsuarioProvider(Usuario usuario) {
		Connection con = null;
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		Boolean success = false;
		
		String sql = "INSERT INTO usuarios "
				+ "("
				+ "tipo_usuario, "
				+ "nome_completo, "
				+ "email,"
				+ "senha,"
				+ "cnpj,"
				+ "data_criacao"
				+ ") "
				+ "VALUES (?, ?, ?, ?, ?, ?)";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			
			preparador.setString(1, usuario.getTipoUsuario());
			preparador.setString(2, usuario.getNomeCompleto());
			preparador.setString(3, usuario.getEmail());
			preparador.setString(4, usuario.getSenha());
			preparador.setString(5, usuario.getCnpj());
			preparador.setDate(6, new java.sql.Date(((java.util.Date) usuario.getDataCriacao()).getTime()));
			
			preparador.execute();
            
			success = true;
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return success;
	}

	public Usuario login(String email, String senha) {
		Usuario usuario = null;
		
		Connection con = null;
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		String sql = "SELECT * FROM usuarios WHERE email = ? AND senha = ?";
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			
			preparador.setString(1, email);
			preparador.setString(2, senha);
			
            ResultSet resultado = preparador.executeQuery();
            
            if(resultado.next()) {
            	usuario = new Usuario();
            	usuario.setId(Integer.valueOf(resultado.getString("id")));
            	usuario.setTipoUsuario(resultado.getString("tipo_usuario"));
            	usuario.setCpf(resultado.getString("cpf"));
            	usuario.setCnpj(resultado.getString("cnpj"));
            	usuario.setRazaoSocial(resultado.getString("razao_social"));
            	usuario.setImagemPerfil(resultado.getString("imagem_perfil"));
            	usuario.setNomeCompleto(resultado.getString("nome_completo"));
            	usuario.setCep(resultado.getString("cep"));
            	usuario.setCnh(resultado.getString("cnh"));
            	usuario.setComplemento(resultado.getString("complemento"));
            	usuario.setBairro(resultado.getString("bairro"));
            	usuario.setEndereco(resultado.getString("endereco"));
            	usuario.setUf(resultado.getString("uf"));
            	usuario.setCidade(resultado.getString("cidade"));
            	usuario.setEmail(resultado.getString("email"));
            	usuario.setDataCriacao(resultado.getDate("data_criacao"));
            	usuario.setDataNascimento(resultado.getDate("data_nascimento"));
            	usuario.setTelefone(resultado.getString("celular"));
            	if(resultado.getString("tipo_usuario").equals("Pessoa Fisica")) {
            		usuario.setIsPessoaFisica(true);
            	} else {
            		usuario.setIsPessoaFisica(false);
            	}
            }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
	}
	
	public Usuario getUsuarioById(int idUsuario) {
		
		Usuario usuario = null;
		
		Connection con = null;
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		
		String sql = "SELECT * FROM usuarios WHERE id = ?";
		
		try {
			PreparedStatement preparador = con.prepareStatement(sql);
			
			preparador.setInt(1, idUsuario);
			
            ResultSet resultado = preparador.executeQuery();
            
            if(resultado.next()) {
            	usuario = new Usuario();
            	usuario.setId(Integer.valueOf(resultado.getString("id")));
            	usuario.setTipoUsuario(resultado.getString("tipo_usuario"));
            	usuario.setCpf(resultado.getString("cpf"));
            	usuario.setCnpj(resultado.getString("cnpj"));
            	usuario.setRazaoSocial(resultado.getString("razao_social"));
            	usuario.setImagemPerfil(resultado.getString("imagem_perfil"));
            	usuario.setNomeCompleto(resultado.getString("nome_completo"));
            	usuario.setCep(resultado.getString("cep"));
            	usuario.setCnh(resultado.getString("cnh"));
            	usuario.setComplemento(resultado.getString("complemento"));
            	usuario.setBairro(resultado.getString("bairro"));
            	usuario.setEndereco(resultado.getString("endereco"));
            	usuario.setUf(resultado.getString("uf"));
            	usuario.setCidade(resultado.getString("cidade"));
            	usuario.setEmail(resultado.getString("email"));
            	usuario.setSenha(resultado.getString("senha"));
            	usuario.setDataCriacao(resultado.getDate("data_criacao"));
            	usuario.setDataNascimento(resultado.getDate("data_nascimento"));
            	usuario.setTelefone(resultado.getString("celular"));
            	if(resultado.getString("tipo_usuario").equals("Pessoa Fisica")) {
            		usuario.setIsPessoaFisica(true);
            	} else {
            		usuario.setIsPessoaFisica(false);
            	}
            }
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return usuario;
		
	}
	
	public boolean atualizarUsuario(Usuario usuario) {
		
		Connection con = null;
		try {
			con = Conexao.receberConexao();
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
		boolean sucesso = false;
		
		if(usuario.getTipoUsuario().equals("Pessoa Fisica")) {
			
			String sql = "UPDATE usuarios "
					+ "SET "
					+ "nome_completo = ?, "
					+ "celular = ?, "
					+ "email = ?, "
					+ "senha = ?, "
					+ "cpf = ?, "
					+ "cep = ?,"
					+ "endereco = ?,"
					+ "complemento = ?,"
					+ "uf = ?,"
					+ "cidade = ?"
					+ "where id = ?";
			
			PreparedStatement preparador;
			try {
				preparador = con.prepareStatement(sql);
				
				preparador.setString(1, usuario.getNomeCompleto());
				preparador.setString(2, usuario.getTelefone());
				preparador.setString(3, usuario.getEmail());
				preparador.setString(4, usuario.getSenha());
				preparador.setString(5, usuario.getCpf());
				preparador.setString(6, usuario.getCep());
				preparador.setString(7, usuario.getEndereco());
				preparador.setString(8, usuario.getComplemento());
				preparador.setString(9, usuario.getUf());
				preparador.setString(10, usuario.getCidade());
				preparador.setInt(11, usuario.getId());
				
				preparador.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			sucesso = true;
		} else {
			String sql = "UPDATE usuarios "
					+ "SET "
					+ "nome_completo = ?, "
					+ "celular = ?, "
					+ "email = ?, "
					+ "senha = ?, "
					+ "cnpj = ? "
					+ "where id = ?";
					
			
			PreparedStatement preparador;
			
			try {
				preparador = con.prepareStatement(sql);
				
				preparador.setString(1, usuario.getNomeCompleto());
				preparador.setString(2, usuario.getTelefone());
				preparador.setString(3, usuario.getEmail());
				preparador.setString(4, usuario.getSenha());
				preparador.setString(5, usuario.getCnpj());
				preparador.setInt(6, usuario.getId());
				
				preparador.execute();
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
			sucesso = true;
		}
		
		return sucesso;
	}
}
