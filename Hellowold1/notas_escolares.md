# Exercicio Notas Escolares
'''java
import java.util.Scanner;
public class NotasEscolaralunos {
    static void main(String[] args) {

        Scanner leitor = new Scanner(System.in);

        int quantidadeAlunos = -1;

        int aprovados = 0;

        int reprovados = 0;

        double nota = 0;

        double soma = 0;


        while (quantidadeAlunos != 0) {


            System.out.println("Quantos alunos tem na turma?");

            System.out.println("*Digite 0 para sair do programa");

            quantidadeAlunos = leitor.nextInt();


            for (int i = 1; i <= quantidadeAlunos; i++) {

                System.out.println("Qual a nota do aluno " + i);

                nota = leitor.nextDouble();


                soma = soma + nota;


                if (nota >= 6) {

                    aprovados++;

                } else {

                    reprovados++;

                }
            }
            if (quantidadeAlunos != 0) {

                System.out.println("Média da turma: " + soma / quantidadeAlunos);

                System.out.println("Alunos aprovados: " + aprovados);

                System.out.println("Alunos reprovados: " + reprovados);

                soma = 0;

                aprovados = 0;

                reprovados = 0;

            }

        }

    }

}
'''

