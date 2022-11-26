package br.com.alocacaoveiculos.controller;

import java.io.IOException;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.alocacaoveiculos.model.Veiculo;
import br.com.alocacaoveiuclos.dao.VeiculoDAO;

public class ListaCarrosForm implements Acao {

	@Override
	public String executa(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		ListaCarrosByHome lcByHome = new ListaCarrosByHome();
		VeiculoDAO veiculoDAO = new VeiculoDAO();
		
		if(request.getParameter("marcaVeiculoFilter") != null) {	
			
			String marca = request.getParameter("marcaVeiculoFilter");
			String cambio = request.getParameter("cambioVeiculoCambio");
			double valor = Double.valueOf(request.getParameter("valorAluguelCambio"));
			String arCondicionado = request.getParameter("arVeiculoFilter");
			String motor = request.getParameter("motorVeiculoFilter");
			
			String cidadeRetirada = request.getParameter("cidade");
			String dataRetirada = request.getParameter("dataRetirada");
			String dataDevolucao = request.getParameter("dataDevolucao");
			
			Date dataRetiradaFormatted = null;
			try {
				dataRetiradaFormatted = new SimpleDateFormat("yyyy/MM/dd").parse(dataRetirada.replaceAll("-", "/"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			Date dataDevolucaoFormatted = null;
			try {
				dataDevolucaoFormatted = new SimpleDateFormat("yyyy/MM/dd").parse(dataDevolucao.replaceAll("-", "/"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			
			try {
				List<Veiculo> veiculosResult = null;
				try {
					veiculosResult = veiculoDAO.getVeiculosCustomFilters(marca, 
							cambio, valor, arCondicionado, motor, cidadeRetirada, dataRetiradaFormatted, dataDevolucaoFormatted);
				} catch (ParseException e) {
					e.printStackTrace();
				}
				
				lcByHome.setLstVeiculos(veiculosResult);
				lcByHome.setCidadeRetirada(cidadeRetirada);
				lcByHome.setDataRetirada(dataRetirada);
				lcByHome.setDataDevolucao(dataDevolucao);
				
				request.setAttribute("veiculos", lcByHome);
				
			} catch (SQLException e) {
				e.printStackTrace();
			}
			
		} else {
			String localRetirada = request.getParameter("localRetirada");
			String txtDataRetirada = request.getParameter("dataRetirada");
			String txtDataDevolucao = request.getParameter("dataDevolucao");
			
			Date dataRetirada = null;
			try {
				dataRetirada = new SimpleDateFormat("yyyy/MM/dd").parse(txtDataRetirada.replaceAll("-", "/"));
			} catch (ParseException e) {
				e.printStackTrace();
			}
			Date dataDevolucao = null;
			try {
				dataDevolucao = new SimpleDateFormat("yyyy/MM/dd").parse(txtDataDevolucao.replaceAll("-", "/"));
			} catch (ParseException e) {
				e.printStackTrace();
			}

			List<Veiculo> lstVeiculos = null;
			try {
				lstVeiculos = veiculoDAO.getVeiculosByFilter(localRetirada, dataRetirada, dataDevolucao);
				lcByHome.setLstVeiculos(lstVeiculos);
				lcByHome.setCidadeRetirada(localRetirada);
				lcByHome.setDataRetirada(txtDataRetirada);
				lcByHome.setDataDevolucao(txtDataDevolucao);
				
				request.setAttribute("veiculos", lcByHome);
			} catch (ParseException e) {
				e.printStackTrace();
			}
		}
		
		return "forward:listaCarros.jsp";
	}

}
