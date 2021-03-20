import javax.swing.JOptionPane;

public class TestaErros {

	public static void main(String[] args) {
		try {
			int n1, n2, res;
			n1 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 1º número: "));
			n2 = Integer.parseInt(JOptionPane.showInputDialog("Digite o 2º número: "));
			res = n1 / n2;
			JOptionPane.showMessageDialog(null, "Resultado: " + res);
		} catch (Exception e) {
			JOptionPane.showMessageDialog(null, "Não há divisão por zero");
		}
	}
}
