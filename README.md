# Minhas Anotações de Aula 📚

## Matéria: Lógica de Programação

### 🧠 O que aprendi:
*   **O que é lógica:** A base para a programação.
*   **Português Estruturado:** Forma de escrever algoritmos antes de codar.
*   **Fluxogramas:** Representação visual da lógica.
*   **Visual G:** Ferramenta para testar algoritmos em Portugol.

### 🛠️ Ferramentas Utilizadas:
- **VS Code:** Editor de texto.
- **Git & GitHub:** Controlo de versão e portefólio.
- **Git Bash:** Terminal para comandos Git.

---

## 🎯 Exercício Prático: Sistema de Descontos
*Regra de negócio: Aplicar descontos com base no valor da compra e estatuto VIP.*

#### 1. Variáveis Identificadas:
- `valorCompra`: Real
- `isVIP`: Booleano (Verdadeiro/Falso)
- `desconto`: Inteiro

#### 2. Estrutura Lógica (Pseudocódigo):
```portugol
SE (isVIP == verdadeiro E valorCompra > 200) ENTÃO
    desconto = 20%
SENÃO SE (isVIP == verdadeiro) ENTÃO
    desconto = 15%
SENÃO SE (valorCompra > 200) ENTÃO
    desconto = 10%
SENÃO
    desconto = 0%
FIM_SE