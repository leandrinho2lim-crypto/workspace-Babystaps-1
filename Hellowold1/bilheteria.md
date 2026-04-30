# Exercicio Bilheteria
'''java
import java.util.Scanner;
public class Bilheteria {
    public static void main(String[] args) {
        Scanner leitor = new Scanner(System.in);

        System.out.println("Qual a sua idade?");
        int idade = leitor.nextInt();

        System.out.println("Está acompanhado? (digite true ou false)");
        boolean acompanhado = leitor.nextBoolean();

        System.out.println("Já foi banido antes? (digite true ou false)");
        boolean banido = leitor.nextBoolean();
if (banido){
        System.out.println("Entrada não permitida: Você está banido!");}

        else if (idade >= 18 || acompanhado){
            // Se tiver 18 OU estiver acompanhado, entra!
            System.out.println("Entrada permitida. Bem-vindo!");}

        else {
            // Se não tem 18 E não está acompanhado
            System.out.println("Entrada não permitida: Menor de idade desacompanhado.");
        }
    }
}
'''
