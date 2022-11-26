package br.com.alocacaoveiculos.model;

import java.util.Date;

public class Veiculo {

	private int id;
	private int idProvedor;
	private String cidadeRetirada; //local para filtrar
	private String enderecoRetirada; //local específico
	private Date dataRetirada;
	private Date dataDevolucao;
	private String embreagemVeiculo;
	private double valorAluguel;
	private String modeloVeiculo;
	private String corVeiculo;
	private int anoVeiculo;
	private String placaVeiculo;
	private String marcaVeiculo;
	private int kmRodado;
	private String arCondicionado;
	private String motorVeiculo;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getIdProvedor() {
		return idProvedor;
	}
	public void setIdProvedor(int idProvedor) {
		this.idProvedor = idProvedor;
	}
	public String getCidadeRetirada() {
		return cidadeRetirada;
	}
	public void setCidadeRetirada(String cidadeRetirada) {
		this.cidadeRetirada = cidadeRetirada;
	}
	public String getEnderecoRetirada() {
		return enderecoRetirada;
	}
	public void setEnderecoRetirada(String enderecoRetirada) {
		this.enderecoRetirada = enderecoRetirada;
	}
	public Date getDataRetirada() {
		return dataRetirada;
	}
	public void setDataRetirada(Date dataRetirada) {
		this.dataRetirada = dataRetirada;
	}
	public Date getDataDevolucao() {
		return dataDevolucao;
	}
	public void setDataDevolucao(Date dataDevolucao) {
		this.dataDevolucao = dataDevolucao;
	}
	public String getEmbreagemVeiculo() {
		return embreagemVeiculo;
	}
	public void setEmbreagemVeiculo(String embreagemVeiculo) {
		this.embreagemVeiculo = embreagemVeiculo;
	}
	public double getValorAluguel() {
		return valorAluguel;
	}
	public void setValorAluguel(double valorAluguel) {
		this.valorAluguel = valorAluguel;
	}
	public String getModeloVeiculo() {
		return modeloVeiculo;
	}
	public void setModeloVeiculo(String modeloVeiculo) {
		this.modeloVeiculo = modeloVeiculo;
	}
	public String getCorVeiculo() {
		return corVeiculo;
	}
	public void setCorVeiculo(String corVeiculo) {
		this.corVeiculo = corVeiculo;
	}
	public int getAnoVeiculo() {
		return anoVeiculo;
	}
	public void setAnoVeiculo(int anoVeiculo) {
		this.anoVeiculo = anoVeiculo;
	}
	public String getPlacaVeiculo() {
		return placaVeiculo;
	}
	public void setPlacaVeiculo(String placaVeiculo) {
		this.placaVeiculo = placaVeiculo;
	}
	public String getMarcaVeiculo() {
		return marcaVeiculo;
	}
	public void setMarcaVeiculo(String marcaVeiculo) {
		this.marcaVeiculo = marcaVeiculo;
	}
	public int getKmRodado() {
		return kmRodado;
	}
	public void setKmRodado(int kmRodado) {
		this.kmRodado = kmRodado;
	}
	public String getArCondicionado() {
		return arCondicionado;
	}
	public void setArCondicionado(String arCondicionado) {
		this.arCondicionado = arCondicionado;
	}
	public String getMotorVeiculo() {
		return motorVeiculo;
	}
	public void setMotorVeiculo(String motorVeiculo) {
		this.motorVeiculo = motorVeiculo;
	}
}
