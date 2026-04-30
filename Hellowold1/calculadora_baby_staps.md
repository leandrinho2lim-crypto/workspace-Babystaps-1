# Exercicio calculadora 2
'''java
import java.util.Scanner;

public class Calculadorababystaps {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);
        System.out.println("Introduza o primeiro número:");
        double n1 = leitor.nextDouble();
        System.out.println("Introduza o segundo número:");
        double n2 = leitor.nextDouble();
        System.out.println("Escolha: 1(Soma), 2(Subtração), 3(Multiplicação), 4(Divisão)");
        int operacao = leitor.nextInt();
        switch (operacao) {
            case 1:
                System.out.println("Resultado: " + (n1 + n2));
                break;
            case 2:
                System.out.println("Resultado: " + (n1 - n2));
                break;
            case 3:
                System.out.println("Resultado: " + (n1 * n2));
                break;
            case 4:
                if (n2 != 0) {
                    System.out.println("Resultado: " + (n1 / n2));
                } else {
                    System.out.println("Erro: Não se divide por zero.");
                }
                break;
            default:
                System.out.println("Opção inválida!");
        }
    }
}
'''

