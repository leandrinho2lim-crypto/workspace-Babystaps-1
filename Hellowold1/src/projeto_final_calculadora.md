# projeto final calculadora
'''java
import java.util.Scanner;

public class ProjetoFinalCalculadora {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        int operacao = -1;
        double num1 = 0;
        double num2 = 0;

        while (operacao != 0) {
            System.out.println("Escolha a operacao:");
            System.out.println("1-Soma, 2-Subtracao, 3-Multiplicacao, 4-Divisao, 0-Sair");
            operacao = leitor.nextInt();

            if (operacao != 0) {
                System.out.println("Digite o primeiro numero:");
                num1 = leitor.nextDouble();
                System.out.println("Digite o segundo numero:");
                num2 = leitor.nextDouble();

                if (operacao == 1) {
                    System.out.println("Resultado: " + (num1 + num2));
                } else if (operacao == 2) {
                    System.out.println("Resultado: " + (num1 - num2));
                } else if (operacao == 3) {
                    System.out.println("Resultado: " + (num1 * num2));
                } else if (operacao == 4) {
                    if (num2 != 0) {
                        System.out.println("Resultado: " + (num1 / num2));
                    } else {
                        System.out.println("Nao e possivel dividir por zero.");
                    }
                } else {
                    System.out.println("Opcao invalida!");
                }
            }
        }

        System.out.println("Programa encerrado.");
    }
}
'''
