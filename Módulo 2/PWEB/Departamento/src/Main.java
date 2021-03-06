import java.util.ArrayList;
import java.util.List;

public class Main {

	public static void main(String[] args) {

		Departamento departamento = new Departamento();
		departamento.setId(311);
		departamento.setDescricao("TI");

		Funcionario funcionario = new Funcionario();
		funcionario.setMatricula(5546);
		funcionario.setNome("Lais");
		funcionario.setEmail("lais@email.com");
		funcionario.setDepartamento(departamento);

		System.out.println(funcionario.getMatricula());
		System.out.println(funcionario.getNome());
		System.out.println(funcionario.getEmail());
		System.out.println(funcionario.getDepartamento().getDescricao());
		System.out.println("--------------------");

		Departamento dep = new Departamento(554, "QA");
		Funcionario fun = new Funcionario(9874, "Laura", "laura@email.com", dep);

		System.out.println(fun.getMatricula());
		System.out.println(fun.getNome());
		System.out.println(fun.getEmail());
		System.out.println(fun.getDepartamento().getDescricao());
		System.out.println("--------------------");

		List<Funcionario> lista = new ArrayList<Funcionario>();
		lista.add(funcionario);
		lista.add(fun);

		for (Funcionario f : lista) {
			System.out.println(f.getNome());
			System.out.println(f.getDepartamento().getDescricao());
		}
	}
}
