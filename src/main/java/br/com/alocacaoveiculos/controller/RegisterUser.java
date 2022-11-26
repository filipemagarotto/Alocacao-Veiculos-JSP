package br.com.alocacaoveiculos.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alocacaoveiculos.model.Usuario;
import br.com.alocacaoveiuclos.dao.UsuarioDAO;

public class RegisterUser implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		boolean sucesso = false;
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		
		if(request.getParameter("tipoRegistro").equals("pFisica")) {

			boolean hasUsuario = usuarioDAO.verificaUsuarioExistente(request.getParameter("pFisicaEmail"));

			Usuario usuario = null;
			if(hasUsuario) {
				
			} else {
				usuario = new Usuario();
				usuario.setNomeCompleto(request.getParameter("pFisicaNomeCompleto"));
				usuario.setCpf(request.getParameter("pFisicaCpf"));
				usuario.setEmail(request.getParameter("pFisicaEmail"));
				usuario.setSenha(request.getParameter("pFisicaSenha"));
				usuario.setCep(request.getParameter("pFisicaCEP"));
				usuario.setUf(request.getParameter("pFisicaUF"));
				usuario.setComplemento(request.getParameter("pFisicaComplemento"));
				usuario.setBairro(request.getParameter("pFisicaBairro"));
				usuario.setCidade(request.getParameter("pFisicaLocalidade"));
				usuario.setEndereco(request.getParameter("pFisicaLogradouro"));
				usuario.setCnh(request.getParameter("pFisicaCnh"));
				usuario.setTipoUsuario("Pessoa Fisica");
				usuario.setDataCriacao(new Date());
				
				Date pFisicaDataNascimento = null;
				try {
					String dataNascimento = request.getParameter("pFisicaDataNascimento");
					pFisicaDataNascimento = new SimpleDateFormat("yyyy/MM/dd").parse(dataNascimento.replaceAll("-", "/"));
				} catch (ParseException e) {
					e.printStackTrace();
					System.out.println("erro 2");
				}  
				usuario.setDataNascimento(pFisicaDataNascimento);
			}
			if(usuario != null) {
				sucesso = usuarioDAO.criarUsuarioClient(usuario);
			}
			
		} else {
			boolean hasUsuario = usuarioDAO.verificaUsuarioExistente(request.getParameter("pJuridicaEmail"));
			
			Usuario usuario = null;
			if(hasUsuario) {
				
			} else {
				usuario = new Usuario();
				usuario.setNomeCompleto(request.getParameter("pJuridicaNomeCompleto"));
				usuario.setCnpj(request.getParameter("pJuridicaCnpj"));
				usuario.setEmail(request.getParameter("pJuridicaEmail"));
				usuario.setSenha(request.getParameter("pJuridicaSenha"));
				usuario.setTipoUsuario("Pessoa Juridica");
				usuario.setDataCriacao(new Date());
			}
			if(usuario != null) {
				sucesso = usuarioDAO.criarUsuarioProvider(usuario);
			}
		}
		
		if(sucesso) {
			request.setAttribute("success", "Registrado com sucesso.");
		} else {
			request.setAttribute("error", "Usuário já existente");
		}
		
		RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/login.jsp");
		rd.forward(request, response);
		return null;
	}

}
