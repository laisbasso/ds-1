
public class Conta {

	private int numero;
	private double saldo;
	private double limite;
	private Cliente titular;
	
	public Conta(int numero, double saldo, double limite, Cliente titular) {
		this.numero = numero;
		this.saldo = saldo;
		this.limite = limite;
		this.titular = titular;
	}

	public int getNumero() {
		return numero;
	}

	public double getSaldo() {
		return saldo;
	}

	public double getLimite() {
		return limite;
	}

	public Cliente getTitular() {
		return titular;
	}

}
