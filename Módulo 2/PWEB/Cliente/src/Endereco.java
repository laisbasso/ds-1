
public class Endereco {

	private String rua;
	private String bairro;
	private String cep;
	private String estado;
	
	public Endereco(String rua, String bairro, String cep, String estado) {
		this.rua = rua;
		this.bairro = bairro;
		this.cep = cep;
		this.estado = estado;
	}

	public String getRua() {
		return rua;
	}

	public String getBairro() {
		return bairro;
	}

	public String getCep() {
		return cep;
	}

	public String getEstado() {
		return estado;
	}

}
