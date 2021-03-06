import java.util.ArrayList;
import java.util.List;

public class Main {

	public static void main(String[] args) {
		Endereco endereco = new Endereco("Rua 123", "Bairro 321", "12345-000", "SP");
		Cliente cliente = new Cliente("123456789", "Lais", "Basso", endereco);
		Conta conta = new Conta(98765, 1000, 654, cliente);

		Endereco endereco2 = new Endereco("Rua 123", "Bairro 321", "12345-000", "SP");
		Cliente cliente2 = new Cliente("45678945621", "Laura", "Basso", endereco2);
		Conta conta2 = new Conta(65432, 5000, 3856, cliente2);
		
		System.out.println(conta.getNumero());
		System.out.println(conta.getTitular().getCpf());
		System.out.println(conta.getTitular().getNome());
		System.out.println(conta.getTitular().getEndereco().getRua());
		System.out.println("-------------");
		
		List<Conta> lista = new ArrayList<Conta>();
		lista.add(conta);
		lista.add(conta2);
		
		for (Conta c : lista) {
			System.out.println(c.getTitular().getNome());
		}
		
	}
}
