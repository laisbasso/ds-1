
public class TestaOperacao {

	public static void main(String[] args) {
		/*
		Operacao op = new Operacao();
		op.setN1(200);
		op.setN2(0);
		
		try {
			System.out.println(op.divisao());
		} catch (Exception e) {
			System.out.println("Não há divisão por zero");
		}
		*/
		
		Operacao2 op = new Operacao2();
		op.setN1(200);
		try {
			op.setN2(0);
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
		
		System.out.println(op.divisao());
		
	}
}
