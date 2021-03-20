
public class Funcionario {

	private int matricula;
	private String nome;
	private String email;
	private Departamento departamento;

	public Funcionario() {
	}

	public Funcionario(int matricula, String nome, String email, Departamento departamento) {
		this.matricula = matricula;
		this.nome = nome;
		this.email = email;
		this.departamento = departamento;
	}

	public int getMatricula() {
		return matricula;
	}

	public void setMatricula(int matricula) {
		this.matricula = matricula;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public Departamento getDepartamento() {
		return departamento;
	}

	public void setDepartamento(Departamento departamento) {
		this.departamento = departamento;
	}

}
