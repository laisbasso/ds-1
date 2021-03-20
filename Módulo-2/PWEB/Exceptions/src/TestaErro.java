
public class TestaErro {
	
	public static void main(String[] args) {
		try {
			int valor = 200;
			valor = valor / 0;
			System.out.println("Resultado: " + valor);
		} catch (Exception e) {
			System.out.println("Não há divisão por zero");
		} finally {
			System.out.println("Fim");
		}
	}

}
