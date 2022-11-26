package br.com.alocacaoveiculos.controller;

import java.util.Date;
import java.util.List;

import br.com.alocacaoveiculos.model.Veiculo;

public class ListaCarrosByHome {

	private List<Veiculo> lstVeiculos;
	private String cidadeRetirada;
	private String dataRetirada;
	private String dataDevolucao;
	
	public List<Veiculo> getLstVeiculos() {
		return lstVeiculos;
	}
	public void setLstVeiculos(List<Veiculo> lstVeiculos) {
		this.lstVeiculos = lstVeiculos;
	}
	public String getCidadeRetirada() {
		return cidadeRetirada;
	}
	public void setCidadeRetirada(String cidadeRetirada) {
		this.cidadeRetirada = cidadeRetirada;
	}
	public String getDataRetirada() {
		return dataRetirada;
	}
	public void setDataRetirada(String dataRetirada) {
		this.dataRetirada = dataRetirada;
	}
	public String getDataDevolucao() {
		return dataDevolucao;
	}
	public void setDataDevolucao(String dataDevolucao) {
		this.dataDevolucao = dataDevolucao;
	}
}
