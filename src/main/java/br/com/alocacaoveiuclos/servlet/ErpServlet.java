package br.com.alocacaoveiuclos.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alocacaoveiculos.controller.Acao;


@WebServlet("/erp")
public class ErpServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String paramAcao = request.getParameter("acao");
		String nomeDaClasse = "br.com.alocacaoveiculos.controller." + paramAcao;
		System.out.println(paramAcao);
		String nome = null;
		try {
			Class classe = Class.forName(nomeDaClasse);//carrega a classe com o nome 
			Acao acao = (Acao) classe.newInstance();
			nome = acao.executa(request,response);
		} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
			throw new ServletException(e);
		}
		
		if(nome != null) {
			String[] tipoEEndereco = nome.split(":");
			if(tipoEEndereco[0].equals("forward")) {
				RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/"+tipoEEndereco[1]);
				rd.forward(request, response);
			} else {
				response.sendRedirect(tipoEEndereco[1]);
			}
		}	
	}

}
