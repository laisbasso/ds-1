package br.com.etec.jfs.mb;

import java.text.DecimalFormat;

import javax.annotation.ManagedBean;

import br.com.etec.model.Investimento;

@ManagedBean
public class InvestimentoBean {
	
	private Investimento investimento = new Investimento();
	private String resultado;
	
	public Investimento getInvestimento() {
		return investimento;
	}

	public void setInvestimento(Investimento investimento) {
		this.investimento = investimento;
	}

	public String getResultado() {
		return resultado;
	}

	public void setResultado(String resultado) {
		this.resultado = resultado;
	}

	private double poupanca() {
		return investimento.getValor() * 1.03;
	}
	
	private double rendaFixa() {
		return investimento.getValor() * 1.04;
	}
	
	public void calcula() {
		DecimalFormat df = new DecimalFormat("R$ 0.00");
		if (investimento.getTipo().equals("poupanca")) {
			resultado = "Valor do resultado: " + df.format(poupanca());
		} else {
			resultado = "Valor do resultado: " + df.format(rendaFixa());
		}
	}
	
}
