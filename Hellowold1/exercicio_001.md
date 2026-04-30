# Exercicio_001.md
'''java
import java.util.Scanner;

public class exercicio_001 {

    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        final int QUANTIDADE_ALUNOS = 5;
        final int QUANTIDADE_NOTAS = 3;

        String[] nomes = new String[QUANTIDADE_ALUNOS];
        double[][] notas = new double[QUANTIDADE_ALUNOS][QUANTIDADE_NOTAS];

        System.out.println("-------Preencha os dados-------");

        for (int i = 0; i < QUANTIDADE_ALUNOS; i++) {
            System.out.print("\nNome do aluno " + (i + 1) + ": ");
            nomes[i] = sc.nextLine();

            for (int j = 0; j < QUANTIDADE_NOTAS; j++) {
                System.out.print("Nota " + (j + 1) + ": ");
                notas[i][j] = sc.nextDouble();
            }
            sc.nextLine(); // Limpar o buffer do teclado
        }

        double[] medias = new double[QUANTIDADE_ALUNOS];

        for (int i = 0; i < QUANTIDADE_ALUNOS; i++) {
            double soma = 0.0;
            for (int j = 0; j < QUANTIDADE_NOTAS; j++) {
                soma += notas[i][j];
            }
            medias[i] = soma / QUANTIDADE_NOTAS;
        }

        String[] situacao = new String[QUANTIDADE_ALUNOS];

        for (int i = 0; i < QUANTIDADE_ALUNOS; i++) {
            if (medias[i] >= 7.0) {
                situacao[i] = "Aprovado";
            } else {
                situacao[i] = "Reprovado";
            }
        }

        System.out.println("\n-------RELATÓRIO-------\n");

        for (int i = 0; i < QUANTIDADE_ALUNOS; i++) {
            System.out.print("[ " + nomes[i] + " | ");
            for (int j = 0; j < QUANTIDADE_NOTAS; j++) {
                System.out.print(notas[i][j] + " | ");
            }
            System.out.print("Media = " + String.format("%.2f", medias[i]) + " | " + situacao[i] + " ]");
            System.out.println();
        }

        sc.close();
    }
}
'''

