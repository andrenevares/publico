# Lista de Exercícios 02
> Faltando 14, 15, 16, 22, 23, 24 e 25
#### 1. Faça um programa que receba quatro notas de um aluno, calcule e mostre a média aritmética das notas e a mensagem de aprovado ou reprovado, considerando para aprovação média 7.

##### Algoritmo
``` 
Algoritmo01
  
  nota1, nota2, nota3, nota4, media : real

INICIO
  escreva "Qual a nota 01? "
  leia nota1
  escreva "Qual a nota 02? "
  leia nota2
  escreva "Qual a nota 03? "
  leia nota4
  escreva "Qual a nota 04? "
  leia nota4
  media = (nota1 + nota2 + nota3 + nota4) / 4
  se media => 7
    então 
      escreva "aprovado"
    senao se media > 0 
      escreva "aprovado"
    senão 
      escreva "Valore digitado incorreto" 
FIM
  
```
##### Código em C++:

``` 
#include <iostream>
using namespace std;

int main(){
    float nota1, nota2, nota3, nota4, media;
    cout << "Qual a nota 01? ";
    cin >> nota1;
    cout << "Qual a nota 02? ";
    cin >> nota2;
    cout << "Qual a nota 03? ";
    cin >> nota3;
    cout << "Qual a nota 04? ";
    cin >>  nota4;
    media = (nota1 + nota2 + nota3 + nota4) / 4;
    if (media >= 7){
      cout << "A média foi de " << media << ", logo aprovado!";    
    } else if  (media >= 0 ) {
      cout << "A média foi de " << media << ", logo reprovado!";    
    } else {
      cout << "Valores digitados incorreto";  
    } 
}
```



#### 2. Faça um programa que receba duas notas, calcule e mostre a média aritmética e a mensagem que se encontra na tabela a seguir:

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q02.PNG)

##### Algoritmo
``` 

```
##### Código em C++:
``` 
#include <iostream>
using namespace std;

int main(){
    float nota1, nota2, media;
    cout << "Qual a nota 01? ";
    cin >> nota1;
    cout << "Qual a nota 02? ";
    cin >> nota2;
    media = (nota1 + nota2) / 2;
    if (media >= 7){
      cout << "A média foi de " << media << ", logo APROVADO!";    
    } else if (media >= 3 ){
        cout << "A média foi de " << media << ", logo EXAME!";    
    } else if  (media >= 0 ) {
      cout << "A média foi de " << media << ", logo REPROVADO!";    
    } else {
      cout << "Valores digitados incorreto";  
    } 
}
``` 

[Código da Resolução](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/lista002/questao02.c)

#### 3. Faça um programa que receba dois números e mostre o menor.



##### Algoritmo
``` 
```
##### Código em C++:
``` 
#include <iostream>
using namespace std;

int main(){
    float n1, n2;
    cout << "Digite um número... ";
    cin >> n1;
    cout << "Digite outro número..." ;
    cin >> n2;
    if (n1 > n2){
      cout << "O número " << n1 << " é maior que " << n2;    
    } else if (n1 < n2){
      cout << "O número " << n2 << " é maior que " << n1;
    } else if  (n1 = n2) {
      cout << "O número " << n1 << " igual " << n2;    
    } else {
      cout << "Valores digitados incorretos";  
    } 
}

``` 


#### 4. Faça um programa que receba três números e mostre o maior.

##### Algoritmo
``` 
```
##### Código em C++:
``` 
int main(){
    float n1, n2, n3;
    cout << "Digite um número... ";
    cin >> n1;
    cout << "Digite outro número..." ;
    cin >> n2;
    cout << "Digite outro número..." ;
    cin >> n3;
    if (n1 >= n2) {
        if (n1 >= n3) {
        cout << "O maior valor é " << n1;
        }   else {
            cout << "O maior valor é " << n3;  
        }
    } else if(n2 >= n1) {
        if (n2 >= n3) {
        cout << "O maior valor é " << n2;
        }   else {
            cout << "O maior valor é " << n3;  
        }
    } 
}
``` 


#### 5. Faça um programa que receba dois números e execute as operações listadas a seguir, de acordo com a escolha do usuário.


|  Escolha do usuário   | Operação      |
|  :-:   |  :-:    |
|  1   |  Média entre os números digitados    |
|  2   |  Diferença do maior pelo menor    |
|  3   |  Produtos entre os números digitados    |
|  4   |  Divisão do primeiro pelo segundo    |


Se a opção digitada for inválida, mostre uma mensagem de erro e termine a execução do programa. lembre-se de que, na operação 4, o segundo número deve ser diferente de zero.

##### Algoritmo
``` 
```
##### Código em C++:
``` 
#include <iostream>
#include <cmath>
using namespace std;

int main() {
    float n1, n2;
    int opcao;
    cout << "Digite um número... ";
    cin >> n1;
    cout << "Digite outro número..." ;
    cin >> n2;
    cout << "[ 1 ] Média entre os números digitados" << endl;
    cout << "[ 2 ] Diferença do maior pelo menor" << endl;
    cout << "[ 3 ] Produto entre os números digitados" << endl;
    cout << "[ 4 ] Divisão do primeiro pelo segundo" << endl;
    cout << "----------------------------------------" << endl;
    cout << "Digite o  uma das opções..." ;
    cin >> opcao;
    switch (opcao) {
        case 1:
            cout << "\n\nA média dos valores é: " << (n1 + n2) / 2;
            break;
        case 2:
            cout << "\n\nDiferença entre os valores é: " << fdim(max(n1, n2), min(n1,n2)) ;
            break;
        case 3:
            cout << "\n\nProduto entre os números digitados é: " << (n1 * n2);
            break;
        case 4:
            cout << "\n\nA média dos valores é: " << n1 / n2;
            break;
        
    }
}
``` 


#### 6. Faça um programa que receba dois números e execute uma das operações listadas a seguir, de acordo com a escolha do usuário. Se for digitada uma opção inválida, mostre mensagem de erro e termine a execução do programa. As opções são:

a) O primeiro número elevado ao segundo número.
b) Raiz quadrada de cada um dos números.
c) Raiz cúbica de cada um dos números.

##### Algoritmo
``` 
#include <iostream>
#include <cmath>
using namespace std;

int main(){
    int n1, n2, opcao;
    cout << "Por favor, digite o primeiro número... ";
    cin >> n1;
    cout << "Por favor, digite o segundo número... ";
    cin >> n2;
    cout << "\n\n\n";
    cout << "[ 1 ] O primeiro número elevado ao segundo número" << endl;
    cout << "[ 2 ] Raiz quadrada de cada um dos números." << endl;
    cout << "[ 3 ] Raiz cúbica de cada um dos números." << endl;
    cout << "-------------------------------------------------" << endl;
    cout << "Por favor digite a opção... ";
    cin >> opcao;
    switch (opcao){
        case 1:
            cout << "\n\n\n";
            cout << n1 << " elevado a " << n2 << " é igual a " << pow(n1,n2);
            break;
        case 2:
            cout << "\n\n\n";
            cout << "A raiz quadrada de " << n1 << " é " << sqrt(n1) << endl;
            cout << "A raiz quadrada de " << n2 << " é " << sqrt(n2) << endl;
            break;
        case 3:
            cout << "\n\n\n";
            cout << "A raiz cúbica de " << n1 << " é " << cbrt(n1) << endl;
            cout << "A raiz cúbica de " << n2 << " é " << cbrt(n2) << endl;
            break;
        
    }
}
```
##### Código em C++:
``` 
#include <iostream>
#include <cmath>
using namespace std;

int main(){
    int n1, n2, opcao;
    cout << "Por favor, digite o primeiro número... ";
    cin >> n1;
    cout << "Por favor, digite o segundo número... ";
    cin >> n2;
    cout << "\n\n\n";
    cout << "[ 1 ] O primeiro número elevado ao segundo número" << endl;
    cout << "[ 2 ] Raiz quadrada de cada um dos números." << endl;
    cout << "[ 3 ] Raiz cúbica de cada um dos números." << endl;
    cout << "-------------------------------------------------" << endl;
    cout << "Por favor digite a opção... ";
    cin >> opcao;
    switch (opcao){
        case 1:
            cout << "\n\n\n";
            cout << n1 << " elevado a " << n2 << " é igual a " << pow(n1,n2);
            break;
        case 2:
            cout << "\n\n\n";
            cout << "A raiz quadrada de " << n1 << " é " << sqrt(n1) << endl;
            cout << "A raiz quadrada de " << n2 << " é " << sqrt(n2) << endl;
            break;
        case 3:
            cout << "\n\n\n";
            cout << "A raiz cúbica de " << n1 << " é " << cbrt(n1) << endl;
            cout << "A raiz cúbica de " << n2 << " é " << cbrt(n2) << endl;
            break;
        
    }
}
``` 

#### 7. Uma empresa decide dar um aumento de 30% aos funcionários com salários inferiores a R$ 500,00. Faça um programa que receba o salário do funcionário e mostre o valor do salário reajustado ou uma mensagem, caso ele não tenha direito ao aumento.

##### Algoritmo
``` 
```
##### Código em C++:
``` 
#include <iostream>
using namespace std;

int main(){
    float salarioInicial, salarioFinal;
    cout << "Por favor, digite o salário... ";
    cin >> salarioInicial;
    salarioFinal = salarioInicial * 1.3;
    if (salarioInicial >= 500) {
        cout << "\n\n\n";
        cout << "Somente funcionário com salários inferiores a R$ 500,00 receberão aumento.";
        
    } else if (salarioInicial > 0) {
        cout << "\n\n\n";
        cout << "O seu salário encontra-se abaixo de R$ 500,00." << endl;
        cout << "Reajustade de 30%, o que representa " << salarioInicial * 0.3 << endl;
        cout << "Salário reajustado para R$ " << salarioFinal;
    } else {
        cout << "\n\n\n";
        cout << "Valores Digitados incorretos.  Tente novamente";
    }
}
``` 



#### 8. Faça um programa para calcular e mostrar o salário reajustado de um funcionário. O percentual de aumento encontra-se na tabela a seguir.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q08.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 


#### 9. Um banco concederá um crédito especial aos seus clientes, de acordo com o saldo médio no último ano. Faça  um programa que receba o saldo médio de um cliente e calcule o valor do crédito, de acordo com a tabela a seguir. Mostre o saldo médio e o valor do crédito.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q09.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



#### 10. O preço ao consumidor de um carro novo é a soma do custo de fábrica com a porcentagem do distribuidor e dos impostos, ambos aplicados ao custo de fábrica. As porcentagens encontram-se na tabela a seguir. Faça um programa que receba o custo de fábrica de um carro e mostre o preço ao consumidor.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q10.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



#### 11. Faça um programa que receba o salário atual de um funcionário e, usando a tabela a seguir, calcule e mostre o valor do aumento e o novo salário.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q11.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



#### 12. Faça um programa que receba o salário bruto de um funcionário e, usando a tabela a seguir, calcule e mostre o valor a receber. Sabe-se que este é composto pelo salário bruto acrescido de gratificação e descontado o imposto de 7% sobre o salário.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q12.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 


#### 13. Faça um programa que receba o preço de um produto, calcule e mostre, de acordo com as tabelas a seguir, o novo preço e a classificação.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q13A.PNG)

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q13B.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 


### 14. Faça um programa que receba o salário de um funcionário e, usando a tabela a seguir, calcule e mostre o novo salário.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q14.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



### 15. Uma agência bancária possui dois tipos de investimentos, conforme o quadro a seguir. Faça um programa que receba o tipo de investimento e seu valor, calcule e mostre o valor corrigido após um mês de investimento, de acordo com o tipo de investimento.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q15.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



### 16. Uma empresa decide aplicar descontos nos seus preços usando a tabela a seguir. Faça um programa que receba o preço atual de um produto e seu código, calcule e mostre o valor do desconto e o novo preço

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q16.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



#### 17. Faça um programa que verifique a validade de uma senha fornecida pelo usuário. A senha é 4531. O programa deve mostrar uma mensagem de permissão de acesso ou não.

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 

#### 18. Faça um programa que receba a idade de uma pessoa e mostre a mensagem de maioridade ou não.

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 


#### 19. Faça um programa que receba a altura e o sexo de uma pessoa e calcule e mostre seu peso ideal, utilizando as seguintes fórmulas (onde h é a altura):

- para homens: (72.7 * h) – 58.

- para mulheres: (62.1 * h) – 44.7.

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



#### 20. Faça um programa que receba a idade de um nadador e mostre sua categoria, usando as regras a seguir. Para idade inferior a 5, deverá mostrar mensagem.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q20.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



#### 21. Faça um programa que receba o preço de um produto e seu código de origem e mostre sua procedência. A procedência obedece à tabela a seguir.

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q21.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 


### 22. Faça um programa que receba a idade e o peso de uma pessoa. De acordo com a tabela a seguir, verifique e mostre em qual grupo de risco essa pessoa se encaixa

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q22.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 




### 23. Faça um programa que receba:
- o código do produto comprado; e
- a quantidade comprada do produto.

calcule e mostre:
- o preço unitário do produto comprado, seguindo a Tabela I;
- o preço total da nota;
- o valor do desconto, seguindo a Tabela II e aplicado sobre o preço total da nota; e
- o preço final da nota depois do desconto.


![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q23A.PNG)

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q23B.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



### 24. Faça um programa que receba o preço, a categoria (1 — limpeza; 2 — alimentação; ou 3 — vestuário) e a situação (R — produtos que necessitam de refrigeração; e N — produtos que não necessitam de refrigeração). calcule e mostre:

- O valor do aumento, usando as regras que se seguem

- O valor do imposto, usando as regras a seguir.


![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q24A.PNG)

![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q24.PNG)

O produto que preencher pelo menos um dos seguintes requisitos pagará imposto equivalente a 5%
do preço; caso contrário, pagará 8%. Os requisitos são:

Categoria: 2

Situação: R
- O novo preço, ou seja, o preço mais aumento menos imposto.
- A classificação, usando as regras a seguir

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



### 25. Uma empresa decidiu dar uma gratificação de Natal a seus funcionários, baseada no número de horas extras e no número de horas que o funcionário faltou ao trabalho. O valor do prêmio é obtido pela consulta à tabela que se segue, na qual:

H = número de horas extras – (2/3 * (número de horas falta))


![IMAGEM](https://github.com/andrenevares/publico/blob/master/linguagemC/listasDeExercicios/imagens/Q25.PNG)

##### Algoritmo
``` 
```
##### Código em C++:
``` 
``` 



