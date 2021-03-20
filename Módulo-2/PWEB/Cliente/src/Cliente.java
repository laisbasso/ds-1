
public class Cliente {

	private String cpf;
	private String nome;
	private String sobrenome;
	private Endereco endereco;
	
	public Cliente(String cpf, String nome, String sobrenome, Endereco endereco) {
		this.cpf = cpf;
		this.nome = nome;
		this.sobrenome = sobrenome;
		this.endereco = endereco;
	}

	public String getCpf() {
		return cpf;
	}

	public String getNome() {
		return nome;
	}

	public String getSobrenome() {
		return sobrenome;
	}

	public Endereco getEndereco() {
		return endereco;
	}

}
