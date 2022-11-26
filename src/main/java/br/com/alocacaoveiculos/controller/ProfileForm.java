package br.com.alocacaoveiculos.controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alocacaoveiculos.model.Usuario;
import br.com.alocacaoveiuclos.dao.UsuarioDAO;

public class ProfileForm implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		Usuario usuario = new Usuario();
		UsuarioDAO usuarioDAO = new UsuarioDAO();
		System.out.println(request.getParameter("tipoUsuario"));
		
		if(request.getParameter("tipoUsuario").equals("Pessoa Fisica")) {

			usuario.setId(Integer.valueOf(request.getParameter("id")));
			usuario.setTipoUsuario(request.getParameter("tipoUsuario"));
			
			usuario.setTelefone(request.getParameter("telefone"));
			usuario.setNomeCompleto(request.getParameter("nomeCompleto"));
			usuario.setCpf(request.getParameter("cpf"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			usuario.setCep(request.getParameter("cep"));
			usuario.setEndereco(request.getParameter("endereco"));
			usuario.setComplemento(request.getParameter("complemento"));
			usuario.setUf(request.getParameter("uf"));
			usuario.setCidade(request.getParameter("cidade"));
			boolean atulizadoSucesso = usuarioDAO.atualizarUsuario(usuario);
			
			if(atulizadoSucesso) {
				request.setAttribute("success", "Editado com sucesso.");
			}

		} else {
			usuario.setId(Integer.valueOf(request.getParameter("id")));
			usuario.setTipoUsuario(request.getParameter("tipoUsuario"));
			
			usuario.setTelefone(request.getParameter("telefone"));
			usuario.setNomeCompleto(request.getParameter("nomeCompleto"));
			usuario.setCnpj(request.getParameter("cnpj"));
			usuario.setEmail(request.getParameter("email"));
			usuario.setSenha(request.getParameter("senha"));
			boolean atulizadoSucesso = usuarioDAO.atualizarUsuario(usuario);
			
			if(atulizadoSucesso) {
				request.setAttribute("success", "Editado com sucesso.");
			}
		}
		
		return "redirect:erp?acao=Profile";
	}

}
