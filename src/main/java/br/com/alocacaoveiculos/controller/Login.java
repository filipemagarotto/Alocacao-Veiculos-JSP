package br.com.alocacaoveiculos.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alocacaoveiculos.model.Usuario;
import br.com.alocacaoveiuclos.dao.UsuarioDAO;

public class Login implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		UsuarioDAO usuarioDAO = new UsuarioDAO();
		String email = request.getParameter("emailLogin");
		String senha = request.getParameter("senhaLogin");
		
		Usuario usuario = usuarioDAO.login(email, senha);
		String forward = null;
		
		if(usuario != null) {
			HttpSession sessao = request.getSession();
			sessao.setAttribute("usuarioLogado", usuario);
			forward = "redirect:erp?acao=Profile";
		} else {
			request.setAttribute("error", "Login incorreto.");
			forward = "forward:login.jsp";
		}
		
		return forward;
	}

}
