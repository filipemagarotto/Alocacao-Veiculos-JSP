package br.com.alocacaoveiculos.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import br.com.alocacaoveiculos.model.Usuario;
import br.com.alocacaoveiuclos.dao.UsuarioDAO;

public class Profile implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		HttpSession session = (HttpSession) request.getSession();
        Usuario usuario = (Usuario) session.getAttribute("usuarioLogado");
        
        UsuarioDAO usuarioDAO = new UsuarioDAO();
        Usuario usurioResult = usuarioDAO.getUsuarioById(usuario.getId());
        
		HttpSession sessao = request.getSession();
		sessao.setAttribute("usuarioLogado", usurioResult);
		
		return "forward:profile.jsp";
	}

}
