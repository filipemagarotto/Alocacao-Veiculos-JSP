package br.com.alocacaoveiuclos.servlet;

import java.sql.Connection;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import br.com.alocacaoveiuclos.banco.Conexao;

public class ToTeste {

	public static void main(String[] args) throws ParseException {

		String dataRecebida = "2001-10-15";
		
		Date pFisicaDataNascimento = new SimpleDateFormat("yyyy/MM/dd").parse(dataRecebida.replaceAll("-", "/"));
		System.out.println(pFisicaDataNascimento);

	}

}
