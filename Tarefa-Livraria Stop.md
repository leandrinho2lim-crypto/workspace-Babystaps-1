# GESTÃO DE LIVRARIA

## TABELA: LIVROS


| ID_Livro (PK) | Titulo | Genero | Preco | Moeda | ID_Autor (FK) |
| :--- | :--- | :--- | :--- | :--- | :--- |
| *INT* | *VARCHAR* | *VARCHAR* | *DECIMAL* | *VARCHAR* | *INT* |
| 1 | O Alquimista | ficcao | 15.50 | EUR | 101 |
| 2 | Brida | Romance | 14.00 | EUR | 101 |
| 3 | Ensaio sobre a cegueira | Drama | 18.90 | EUR | 102 |
| 4 | Homem duplicado | Suspense | 17.00 | EUR | 102 |
| 5 | Memorial do Convento | Historia | 20.00 | EUR | 102 |
| 6 | Harry Potter P-F | Fantasia | 25.00 | EUR | 103 |
| 7 | Harry Potter C-S | Fantasia | 25.00 | EUR | 103 |
| 8 | Codigo Da Vinci | Misterio | 14.50 | EUR | 104 |
| 9 | Ceu | Misterio | 16.00 | EUR | 104 |
| 10 | Fortaleza Digital | Thriller | 13.00 | EUR | 104 |

---

## TABELA: AUTORES


| ID_Autor (PK) | Nome | Nacionalidade | Data_Nasc | Email |
| :--- | :--- | :--- | :--- | :--- |
| *INT* | *VARCHAR* | *VARCHAR* | *DATE* | *VARCHAR* |
| 101 | Paulo Coelho | Brasileiro | 1947-08-24 | paulo@email.com |
| 102 | Jose Saramago | Portugues | 1922-11-16 | saramago@email.com |
| 103 | J.K. Rowling | Britanica | 1965-07-31 | jk@email.com |
| 104 | Dan Brown | Americano | 1964-06-22 | dan@email.com |
| 105 | Machado de Assis | Brasileiro | 1839-06-21 | machado@email.com |
| 106 | Clarice Lispector | Brasileira | 1920-12-10 | clarice@email.com |
| 107 | Agatha Christie | Britanica | 1890-09-15 | agatha@email.com |
| 108 | Stephen King | Americano | 1947-09-21 | stephen@email.com |
| 109 | George Orwell | Britanico | 1903-06-25 | george@email.com |
| 110 | Isabel Allende | Chilena | 1942-08-02 | isabel@email.com |
