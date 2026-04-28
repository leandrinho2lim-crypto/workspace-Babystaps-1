# Exercicio Calculadora

Codigo da calculadora com as 4 operacoes basicas.

```java
import java.util.Scanner;

public class Calculadora {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        int operacao = -1;
        double n1 = 0;
        double n2 = 0;

        while (operacao != 0) {
            System.out.println("Escolha a operacao (1-Soma, 2-Sub, 3-Mult, 4-Div, 0-Sair):");
            operacao = leitor.nextInt();

            if (operacao != 0) {
                System.out.println("Digite o primeiro numero:");
                n1 = leitor.nextDouble();
                System.out.println("Digite o segundo numero:");
                n2 = leitor.nextDouble();

                if (operacao == 1) {
                    System.out.println("Resultado: " + (n1 + n2));
                } else if (operacao == 2) {
                    System.out.println("Resultado: " + (n1 - n2));
                } else if (operacao == 3) {
                    System.out.println("Resultado: " + (n1 * n2));
                } else if (operacao == 4) {
                    if (n2 != 0) {
                        System.out.println("Resultado: " + (n1 / n2));
                    } else {
                        System.out.println("Nao e possivel dividir por zero.");
                    }
                }
            }
        }
    }
}
```
