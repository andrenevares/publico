# Lista de Exercícios:

> Resolvido por André Nevares em 06/04/2020

## Lista de Algoritmos em C++ referente aos Exercícios

### 1. Faça um programa que receba dois números, calcule e mostre a subtração do primeiro número pelo segundo.

#### Algoritmo:
```
Algoritmo 01
  subtracao, n1, n2: real

Inicio
  escreva("Insira número 01: ")
  leia(n1)
  escreva("Insira número 02: ")
  leia(n2)
  subtracao = n1 - n2
  escreva("------------")
  escreva("A subtraçâo de " + n1 " por " + n2 + " resultará em " + subtracao)
 Fim
```

#### Em C++
```
#include <iostream>
using namespace std;

int main()
{
    int x, y;
    cout << "Por favor digite o número 01: ";
    cin >> x;
    cout << "Por favor digite o número 02: ";
    cin >> y;
    cout << "----------------------------\n";
    cout << x - y;
}


```



### 2. Faça um programa que receba três números, calcule e mostre a multiplicação desses números.

#### Algoritmo:
```
Algoritmo 02
  multiplicacao, n1, n2, n3: real

Inicio
  escreva("Insira o número 01: ")
  leia(n1)
  escreva("Insira o número 02: ")
  leia(n2)
  escreva("Insira o número 03: ")
  leia(n3)
  multiplicacao = n1 * n2 * n3
  escreva("------------")
  escreva("A multiplicação " + n1 " x " + n2 + " x " + n3 + " resultará em " + multiplicacao)
 Fim

```

#### Em C++
```

#include <iostream>
using namespace std;

int main()
{
    int x, y, z;
    cout << "Por favor digite o número 01: ";
    cin >> x;
    cout << "Por favor digite o número 02: ";
    cin >> y;
    cout << "Por favor digite o número 03: ";
    cin >> z;
    cout << "----------------------------\n";
    cout << "O Resultado de " << x << " x " << y << " x " << z << " = " << x * y * z;
}


```


### 3. Faça um programa que receba dois números, calcule e mostre a divisão do primeiro número pelo segundo. Sabe-se que o segundo número não pode ser zero, portanto, não é necessário se preocupar com validações.

#### Algoritmo:
```
Algoritmo 03
  divisao, n1, n2: real

Inicio
  escreva("Insira número 01: ")
  leia(n1)
  escreva("Insira número 02: ")
  leia(n2)
  divisao = n1 / n2
  escreva("------------")
  escreva("A divisão de " + n1 " por " + n2 + " resultará em " + divisao)
 Fim

```

#### Em C++
```
#include <iostream>
using namespace std;

int main()
{
    int n1, n2;
    cout << "Por favor digite o número 01: ";
    cin >> n1;
    cout << "Por favor digite o número 02: ";
    cin >> n2;
    cout << "----------------------------\n";
    cout << "A divisão de " << n1 << " por " << n2 << " = " << n1/n2;
   
}

```

### 4. Faça um programa que receba duas notas, calcule e mostre a média ponderada dessas notas, considerando peso 2 para a primeira e peso 3 para a segunda.

#### Algoritmo:
```
Algoritmo 04
  media, n1, n2: real

Inicio
  escreva("Insira número 01: ")
  leia(n1)
  escreva("Insira número 02: ")
  leia(n2)
  media = ( ( n1 * 2 )  + ( n2 * 3) ) / 5
  escreva("------------")
  escreva("A media de " + n1 " com peso 2 " + n2 + " com peso 3 " + media)
 Fim

```

#### Em C++
```
#include <iostream>
using namespace std;

int main()
{
    float n1, n2, media; // uso a variável média pois facilita reuso de código
    cout << "Por favor digite o número 01: ";
    cin >> n1;
    cout << "Por favor digite o número 02: ";
    cin >> n2;
    cout << "----------------------------\n";
    media = ((n1*2)+(n2*3))/5;
    cout << "A média obtida por " << n1 << " com peso 2 e " << n2 << " com peso 3 é " << media;
   
}
```

### 5. Faça um programa que receba o preço de um produto, calcule e mostre o novo preço, sabendo-se que este sofreu um desconto de 10%.

#### Algoritmo
```
Algoritmo 05
  valorFinal, p1: real

Inicio
  escreva("Digite o valor do produto : ")
  leia(p1)
  valorFinal = p1 * 0.9
  escreva("------------")
  escreva("O valor do preco final com desconto será de " + valorFinal)
 Fim
```

#### Em C++
```
#include <iostream>
using namespace std;

int main()
{
    float precoInicial, novoPreco; 
    cout << "Digite o preço do produto: ";
    cin >> precoInicial;
    novoPreco = precoInicial * 0.9;
    cout << "----------------------------\n\n";
    cout << "Considerando 10% de desconto sobre o preço inicial de " << precoInicial << ",\nteremos um novo preço de R$ " << novoPreco;
   
}

```

### 6. Um funcionário recebe um salário fixo mais 4% de comissão sobre as vendas. Faça um programa que receba o salário fixo do funcionário e o valor de suas vendas, calcule e mostre a comissão e seu salário final.

```
Algoritmo 06
  salarioFinal, salario, comissao, vendas: real

Inicio
  escreva("Digite o salário do funcionário: ")
  leia(salario)
  escreva("Digite o valor de suas vendas : ")
  leia(vendas)
  comissao = vendas * 0.04
  salarioFinal = salario + comissao
  escreva("------------")
  escreva("Salário: " + salario)
  escreva("Comissão: " + comissao)
  escreva("Salário final será de: " + salarioFinal)
Fim
```


#### Em C++:

```
#include <iostream>
using namespace std;

int main()
{
    float salarioTotal, salarioFixo, vendas, comissao;
    cout << "Qual o salário fixo do funcionário? ";
    cin >> salarioFixo;
    cout << "\nQual o valor das vendas? ";
    cin >> vendas;
    comissao = vendas * 0.04;
    salarioTotal = salarioFixo + comissao;
    cout << "----------------------------\n\n";
    cout << "1. Salário Fixo: " << salarioFixo << "\n";
    cout << "2. Comissão: " << comissao  << "\n";
    cout << "3. Comissão (1 + 2): " << salarioTotal;
}
```

### 7. Faça um programa que receba o peso de uma pessoa, calcule e mostre:

### a) o novo peso, se a pessoa engordar 15% sobre o peso digitado;
#### Algoritmo:


```
Algoritmo 07A
  pesoFinal, pesoInicial, indice, indicePorCento: real

Inicio
  indice = 0.15
  indicePorCento = 100 * indice
  escreva("Digite o peso : ")
  leia(pesoInicial)
  pesoFinal = pesoInicial * ( 1 + indice)
  escreva("------------")
  escreva("Seu peso engordando " + indicePorCento + "% será de " + pesoFinal)
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float pesoInicial, pesoFinal, indiceDeVariacao;
    cout << "Qual o peso da pessoa?  ";
    cin >> pesoInicial; 
    // Configuração do código:
    // Variações positivas - Aumento de peso
    // Variações negativas - Perda de peso
    indiceDeVariacao = 0.15;
    pesoFinal = (1 + indiceDeVariacao) * pesoInicial;
    cout << "\n\n\n";
    cout << "O peso final calculado é de: " << pesoFinal;
}

```

### b) o novo peso, se a pessoa emagrecer 20% sobre o peso digitado. 

#### Algoritmo:

```
Algoritmo 07B
  pesoFinal, pesoInicial, indice, indicePorCento: real

Inicio
  indice = 0.20
  indicePorCento = 100 * indice
  escreva("Digite o peso : ")
  leia(pesoInicial)
  pesoFinal = pesoInicial * ( 1 + indice)
  escreva("------------")
  escreva("Seu peso engordando " + indicePorCento + "% será de " + pesoFinal)
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float pesoInicial, pesoFinal, indiceDeVariacao;
    cout << "Qual o peso da pessoa?  ";
    cin >> pesoInicial; 
    // Configuração do código:
    // Variações positivas - Aumento de peso
    // Variações negativas - Perda de peso
    indiceDeVariacao = -0.2;
    pesoFinal = (1 + indiceDeVariacao) * pesoInicial;
    cout << "\n\n\n";
    cout << "O peso final calculado é de: " << pesoFinal;
}
```

### 8. Faça um programa que receba o peso de uma pessoa em quilos, calcule e mostre esse peso em gramas.

#### Algoritmo:
```
Algoritmo 08
  pesoFinal, pesoInicial: real

Inicio
  escreva("Digite o peso : ")
  leia(pesoInicial)
  pesoFinal = pesoInicial * 1000
  escreva("------------")
  escreva("Seu em gramas é " + pesoFinal)
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float pesoEmKg, pesoEmGramas;
    cout << "Qual o peso da pessoa em kilos?  ";
    cin >> pesoEmKg; 
    // Configuração do código:
    // Variações positivas - Aumento de peso
    // Variações negativas - Perda de peso
    pesoEmGramas = pesoEmKg * 1000;
    cout << "\n\n\n";
    cout << "O peso de " << pesoEmKg << " Kilos equivale a " << pesoEmGramas << " gramas.";
}
```

### 9. Faça um programa que calcule e mostre a área de um trapézio.
Sabe-se que: A = ((base maior + base menor) * altura)/2

#### Algoritmo:
```
Algoritmo 09
  areaTotal , baseMaior, baseMenor, altura: real

Inicio
  escreva("Digite a base 1 : ")
  leia(baseMenor)
  escreva("Digite a base 2 : ")
  leia(baseMaior)
  escreva("Digite a altura : ")
  leia(altura)
  areaTotal = (( baseMenor * baseMaior ) * altura ) / 2
  escreva("------------")
  escreva("A área do trapézio é " + areaTotal)
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float areaTotal, baseMaior, baseMenor, altura;
    cout << "Digite a Base 01?  ";
    cin >> baseMaior;
    cout << "\nDigite a Base 02?  ";
    cin >> baseMenor;
    cout << "\nDigite a Altura?  ";
    cin >> altura;
    areaTotal = ((baseMenor * baseMaior) * altura) / 2;
    cout << "\n\n\n";
    cout << "A área do trapézio é " << areaTotal;
}
```

### 10. Faça um programa que calcule e mostre a área de um quadrado. Sabe-se que: A = lado * lado.

#### Algoritmo:
```
Algoritmo 10
  areaTotal , lado: real

Inicio
  escreva("Digite o tamanho do lado do quadrado: ")
  leia(lado)
  areaTotal = lado ^ 2
  escreva("------------")
  escreva("A área do quadrado é " + areaTotal)
Fim
```

#### Em C++:
```
#include <iostream>
#include <cmath>

using namespace std;

int main()
{
    float areaTotal, lado;
    cout << "Digite o tamanho do lado do quadrado: ";
    cin >> lado;
    cout << "\n\n\n";
    cout << "A área do quadrado é " << pow(lado,2);
}
```
### 11. Faça um programa que calcule e mostre a área de um losango. Sabe-se que: A = (diagonal maior * diagonal menor)/2.

#### Algoritmo:
```
Algoritmo 11
  areaTotal , diagonalMaior, diagonalMenor: real

Inicio
  escreva("Digite a diagonal 1 : ")
  leia(diagonalMenor)
  escreva("Digite a diagonal 2 : ")
  leia(diagonalMaior)
  areaTotal = ( diagonalMenor * diagonalMaior ) / 2
  escreva("------------")
  escreva("A área do lozango é " + areaTotal)
Fim
```
#### Em C++:
```
#include <iostream>

using namespace std;

int main()
{
    float areaTotal , diagonalMaior, diagonalMenor;
    cout << "Digite a diagonal 1: ";
    cin >> diagonalMaior;
    cout << "Digite a diagonal 2: ";
    cin >> diagonalMenor;
    areaTotal = (diagonalMenor * diagonalMaior) / 2;
    cout << "\n\n\n";
    cout << "A área do lozango é " << areaTotal;
}

```

### 12. Faça um programa que receba o valor do salário mínimo e o valor do salário de um funcionário, calcule e mostre a quantidade de salários mínimos que esse funcionário ganha.

#### Algoritmo:

```
Algoritmo 12
  salarioMinimo , salarioRecebido, indice: real

Inicio
  escreva("Digite a valor do salário mínimo atual : ")
  leia(salarioMinimo)
  escreva("Digite a valor do seu salário : ")
  leia(salarioRecebido)
  indice = salarioRecebido / salarioMinimo 
  escreva("------------")
  escreva("Você recebe " + indice + "salario(s) mínimo(s))
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float salarioMinimo , salarioRecebido, indice;
    cout << "Qual o valor do salário recebido? ";
    cin >> salarioRecebido;
    cout << "Qual o valor do salário mínimo vigente? ";
    cin >> salarioMinimo;
    indice = salarioRecebido / salarioMinimo;
    cout << "\n\n\n";
    cout << "Você recebe " << indice << " salario(s) mínimo(s)";
}
```
### 13. Faça um programa que calcule e mostre a tabuada de um número digitado pelo usuário.

Digite um número: 5

5 × 0 = 0
5 × 1 = 5
5 × 2 = 10
5 × 3 = 15
5 × 4 = 20
5 × 5 = 25
5 × 6 = 30
5 × 7 = 35
5 × 8 = 40
5 × 9 = 45
5 × 10 = 50

> Sem FOR
#### Algoritmo:

```
Algoritmo 13
  numero, resultado: real

Inicio
  escreva("Digite um numero : ")
  leia(numero)
  resultado = numero x 0
  escreva(numero + " x 0 = " + resultado)
  resultado = numero x 1
  escreva(numero + " x 1 = " + resultado)
  resultado = numero x 2
  escreva(numero + " x 2 = " + resultado)
  resultado = numero x 3
  escreva(numero + " x 3 = " + resultado)
  resultado = numero x 4
  escreva(numero + " x 4 = " + resultado)
  resultado = numero x 5
  escreva(numero + " x 5 = " + resultado)
  resultado = numero x 6
  escreva(numero + " x 6 = " + resultado)
  resultado = numero x 7
  escreva(numero + " x 7 = " + resultado)
  resultado = numero x 8
  escreva(numero + " x 8 = " + resultado)
  resultado = numero x 9
  escreva(numero + " x 9 = " + resultado)
  resultado = numero x 10
  escreva(numero + " x 10 = " + resultado)
  escreva("------------")
  
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    int numero;
    cout << "Qual o numero? ";
    cin >> numero;
    cout << numero << " x 0 = " << numero * 0 << "\n";
    cout << numero << " x 1 = " << numero * 1 << "\n";
    cout << numero << " x 2 = " << numero * 2 << "\n";
    cout << numero << " x 3 = " << numero * 3 << "\n";
    cout << numero << " x 4 = " << numero * 4 << "\n";
    cout << numero << " x 5 = " << numero * 5 << "\n";
    cout << numero << " x 6 = " << numero * 6 << "\n";
    cout << numero << " x 7 = " << numero * 7 << "\n";
    cout << numero << " x 8 = " << numero * 8 << "\n";
    cout << numero << " x 9 = " << numero * 9 << "\n";
    cout << numero << " x 10 = " << numero * 10 << "\n";
}
```

### 14. Faça um programa que receba o ano de nascimento de uma pessoa e o ano atual, calcule e mostre:
a) a idade dessa pessoa em anos;
b) a idade dessa pessoa em meses;
c) a idade dessa pessoa em dias;
d) a idade dessa pessoa em semanas.

#### Algoritmo:

#### Em C++:

### 15. João recebeu seu salário e precisa pagar duas contas atrasadas. Em razão do atraso, ele deverá pagar multa de 2% sobre cada conta. Faça um programa que calcule e mostre quanto restará do salário de João.

#### Algoritmo:

```
Algoritmo 15
  c1ValorNominal , c1ValorFinal, c2ValorNominal , c2ValorFinal, salarioRecebido, saldo: real

Inicio
  escreva("Digite a valor do seu salário : ")
  leia(salarioRecebido)
  escreva("Digite da conta a pagar 01 : ")
  leia(c1ValorNominal)
  escreva("Digite da conta a pagar 02 : ")
  leia(c2ValorNominal),
  c1ValorFinal = c1ValorNominal * 1.02
  c2ValorFinal = c2ValorNominal * 1.02
  saldo = salarioRecebido - c1ValorFinal - c2ValorFinal
  escreva("------------")
  escreva("O valor que sobrará do seu salário será " + saldo)
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float c1ValorNominal , c1ValorFinal, c2ValorNominal , c2ValorFinal, salarioRecebido, percentualMulta, saldo;
    // Configuração do percentual de multa
    percentualMulta = 0.02;
    cout << "Qual o valor do salário recebido?";
    cin >> salarioRecebido;
    cout << "Digite da conta a pagar 01: ";
    cin >> c1ValorNominal;
    cout << "Digite da conta a pagar 02: ";
    cin >> c2ValorNominal;
    cout << "------------\n";
    c1ValorFinal = c1ValorNominal * ( 1 + percentualMulta);
    c2ValorFinal = c2ValorNominal * ( 1 + percentualMulta);
    saldo = salarioRecebido - c1ValorFinal - c2ValorFinal;
    cout << "O valor que sobrará do seu salário será " << saldo;
    
}
```
### 16. Faça um programa que receba o valor dos catetos de um triângulo, calcule e mostre o valor da hipotenusa.

#### Algoritmo:

```
Algoritmo 16
  a , b, c : real

Inicio
  escreva("Digite cateto b: ")
  leia(b)
  escreva("Digite cateto c: ")
  leia(c)
  a = ( (b^2) + (c^2) ) ^ (1/2)
  escreva("------------")
  escreva("A hipotenusa será: " + a )
Fim
```

#### Em C++:
```
#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    float a , b, c;
    cout << "Digite cateto b: ";
    cin >> b;
    cout << "Digite cateto c: ";
    cin >> c;
    cout << "------------\n";
    a = hypot(b, c);
    cout << "A hipotenusa será: " << a;
}
```
### 17. Faça um programa que receba o raio, calcule e mostre:
### a) o comprimento de uma esfera; sabe-se que C = 2 * p R;

#### Algoritmo:
```
Algoritmo 17A
 r, pi, circunferencia : real

Inicio
  pi = 3,14159265358979323846 
  escreva("Digite o raio: ")
  leia(r)
  circunferencia = 2 * pi * r
  escreva("------------")
  escreva("A circunferência será: " + circunferencia )
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float r, pi, circunferencia;
    pi = 3.14159265358979323846;
    cout << "Digite o raio: ";
    cin >> r;
    circunferencia = 2 * pi * r;
    cout << "------------\n";
    cout << "A circunferência será: " << circunferencia;
}

```

### b) a área de uma esfera; sabe-se que A = p R2;

#### Algoritmo:

```
Algoritmo 17B
 r, pi, area : real

Inicio
  pi = 3,14159265358979323846 
  escreva("Digite o raio: ")
  leia(r)
  area = pi * r^2
  escreva("------------")
  escreva("A Área da circunferência será: " + area )
Fim
```

#### Em C++:
```
#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    float r, pi, area;
    pi = 3.14159265358979323846;
    cout << "Digite o raio: ";
    cin >> r;
    area = pi * pow(r,2);
    cout << "------------\n";
    cout << "A area da circunferência será: " << area;
}
```

### c) o volume de uma esfera; sabe-se que V = 3⁄4 * p R3.
#### Algoritmo:

```
Algoritmo 17C
 r, pi, volume : real

Inicio
  pi = 3,14159265358979323846 
  escreva("Digite o raio: ")
  leia(r)
  volume = (3/4) * pi * r^3
  escreva("------------")
  escreva("O volume da circunferência será: " + volume )
Fim
```

#### Em C++:
```
#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    float r, pi, volume;
    pi = 3.14159265358979323846;
    cout << "Digite o raio: ";
    cin >> r;
    volume = pi * pow(r,3) * 3/4;
    cout << "------------\n";
    cout << "O volume da circunferência será: " << volume;
}
```

### 18. Faça um programa que receba uma temperatura em Celsius, calcule e mostre essa temperatura em Fahrenheit. Sabe-se que F = 180*(C + 32)/100.

#### Algoritmo:

```
Algoritmo 18
 grauC, grauF : real

Inicio
  escreva("Qual o temperatura em graus celcius? ")
  leia(grauC)
  grauF = ( 180 * (grauC + 32) ) /100
  escreva("------------")
  escreva("Cálculo " + grauC + " Celsius representa " + grauF + " Fahrenheit."  )
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float grauC, grauF;
    cout << "Qual o temperatura em graus celcius? ";
    cin >> grauC;
    grauF = ( 180 * (grauC + 32) )/100;
    cout << "------------\n\n";
    cout << "Cálculo:\n" << grauC << " Celsius representa " << grauF << " Fahrenheit.";
}
```

### 19. Sabe-se que, para iluminar de maneira correta os cômodos de uma casa, para cada m2, deve-se usar 18 W de potência. Faça um programa que receba as duas dimensões de um cômodo (em metros), calcule e mostre a sua área (em m2 ) e a potência de iluminação que deverá ser utilizada.

#### Algoritmo:

```
Algoritmo 19
 metragem1, metragem2, area, potencia : real

Inicio
  escreva("Qual a metragem 01? ")
  leia(metragem1)
  escreva("Qual a metragem 02? ")
  leia(metragem2)
  area = metragem1 * metragem1
  potencia = area * 18
  escreva("------------")
  escreva("Metragem calculada: " + area + "m2, a qual demanda uma potência de " + potencia + "W."  )
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float  metragem1, metragem2, area, potencia;
    cout << "Qual a metragem 01? ";
    cin >> metragem1;
    cout << "Qual a metragem 02? ";
    cin >> metragem2;
    area = metragem1 * metragem1;
    potencia = area * 18;
    cout << "------------\n";
    cout << "Metragem calculada: " << area << "m2, a qual demanda uma potência de " << potencia << "W.";

}
```

### 20. Faça um programa que receba a medida do ângulo formado por uma escada apoiada no chão e a distância em que a escada está da parede, calcule e mostre a medida da escada para que se possa alcançar sua ponta.

![Triangulo Exercicio 20](https://github.com/andrenevares/estacio/blob/master/PERIODO001/CCT0893-INTRO-C/TRINGULO-LISTA-EXERCICIOS-01.JPG?raw=true)

#### Algoritmo:

#### Em C++:

### 21. Faça um programa que receba o número de horas trabalhadas, o valor do salário mínimo e o número de horas extras trabalhadas, calcule e mostre o salário a receber, de acordo com as regras a seguir:
a) a hora trabalhada vale 1/8 do salário mínimo;
b) a hora extra vale 1/4 do salário mínimo;
c) o salário bruto equivale ao número de horas trabalhadas multiplicado pelo valor da hora trabalhada;
d) a quantia a receber pelas horas extras equivale ao número de horas extras trabalhadas multiplicado pelo valor
da hora extra;
e) o salário a receber equivale ao salário bruto mais a quantia a receber pelas horas extras.

#### Algoritmo:

```
Algoritmo 21
 horasTrabalhadas, salarioMinimo, horasExtras, salarioBruto, valorReceber, salarioExtra: real

Inicio
  escreva("Quantas horas foram trabalhadas? (Não contar horas extras) ")
  leia(horasTrabalhadas)
  escreva("Quantas horas extras foram trabalhadas? ")
  leia(horasExtras)
  escreva("Qual o valor do salario Minimo? ")
  leia(salarioMinimo)
  salarioBruto = horasTrabalhadas * 1/8 * salarioMinimo
  salarioExtra = horasTrabalhadas * 1/4 * salarioMinimo
  valorReceber = salarioBruto + salarioExtra
  escreva("------------")
  escreva("Salário Bruto: " + salarioBruto)
  escreva("Salário por horas extras: " + salarioExtra)
  escreva("Valor Total a receber: " + valorReceber)
  
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    float  horasTrabalhadas, salarioMinimo, horasExtras, salarioBruto, valorReceber, salarioExtra;
    cout << "Quantas horas foram trabalhadas? (Não contar horas extras) ";
    cin >> horasTrabalhadas;
    cout << "Quantas horas extras foram trabalhadas? ";
    cin >> horasExtras;
    cout << "Qual o valor do salario Minimo? ";
    cin >> salarioMinimo;
    salarioBruto = (horasTrabalhadas * salarioMinimo) / 8;
    salarioExtra = (horasTrabalhadas * salarioMinimo) / 4;
    valorReceber = salarioBruto + salarioExtra;
    cout << "------------\n";
    cout << "Salário Bruto: " << salarioBruto << endl;
    cout << "Salário por horas extras: " << salarioExtra << endl;
    cout << "Valor Total a receber: " << valorReceber << endl; 
}
```

### 22. Faça um programa que receba o número de lados de um polígono convexo, calcule e mostre o número de diagonais desse polígono. Sabe-se que ND = N * (N − 3)/2, em que N é o número de lados do polígono.

#### Algoritmo:

```
Algoritmo 22
 nLados, nDiagonais: inteiro

Inicio
  escreva("Qual o número de lados do polígono? ")
  leia(nLados)
  nDiagonais = nLados * ( nLados - 3 ) / 2
  escreva("------------")
  escreva("O número de diagonais é: " + nDiagonais)
  
Fim
```

### 23. Faça um programa que receba a medida de dois ângulos de um triângulo, calcule e mostre a medida do terceiro ângulo. Sabe-se que a soma dos ângulos de um triângulo é 180 graus.

#### Algoritmo:

```
Algoritmo 23
 angulo1, angulo2, angulo3: real

Inicio
  escreva("Digite o valor do primeiro ângulo: ")
  leia(angulo1)
  escreva("Digite o valor do segundo ângulo: ")
  leia(angulo2)
  angulo3 = 180 - angulo1 - angulo2
  escreva("------------")
  escreva("O valor do terceiro ângulo será: " + angulo3)
  
Fim
```

#### Em C++:
```
#include <iostream>
using namespace std;

int main()
{
    int nLados, nDiagonais;
    cout << "Qual o número de lados do polígono? ";
    cin >> nLados;
    
    nDiagonais = (nLados * (nLados - 3))/2;
    cout << "------------" << endl;
    cout << "O número de diagonais é: " << nDiagonais;
}
```

### 24. Faça um programa que receba a quantidade de dinheiro em reais que uma pessoa que vai viajar possui. Ela vai passar por vários países e precisa converter seu dinheiro em dólares, marco alemão e libra esterlina. Sabe-se que a cotação do dólar é de R$ 1,80; do marco alemão, de R$ 2,00; e da libra esterlina, de R$ 3,57. O programa deve fazer as conversões e mostrá-las.

#### Algoritmo:

```
Algoritmo 24
 reais, conversao, reaisEmDolares, indiceEmDolares, reaisEmMarcoAlemao, indiceEmMarcoAlemao, reaisEmLibraEsterlina, indiceEmLibraEsterlina: real

Inicio
  indiceEmDolares = 1.8
  indiceEmMarcoAlemao = 2.00
  indiceEmLibraEsterlina = 3.57
  escreva("Digite um  valor em reais: ")
  leia(reais)
  escreva("Valor de " + reais + " convertido para:")
  conversao = reais * indiceEmDolares
  escreva("Dólar..." + conversao)
  conversao = reais * indiceEmMarcoAlemao
  escreva("Marco Alemão..." + conversao)
  conversao = reais * indiceEmLibraEsterlina
  escreva("Libra Esterlina..." + conversao)
  escreva("------------")
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main(){
    float reais, conversao, reaisEmDolares, indiceEmDolares, reaisEmMarcoAlemao, indiceEmMarcoAlemao, reaisEmLibraEsterlina, indiceEmLibraEsterlina;
    indiceEmDolares = 1.8;
    indiceEmMarcoAlemao = 2.00;
    indiceEmLibraEsterlina = 3.57;
    cout << "Digite um  valor em reais: ";
    cin >> reais;
    cout << "--------------------------\n\n";
    cout << "Valor de " << reais << " convertido para..." << endl;
    conversao = reais * indiceEmDolares;
    cout << "\nDólar..." << conversao << endl; 
    conversao = reais * indiceEmMarcoAlemao;
    cout << "Marco Alemão..." << conversao << endl;
    conversao = reais * indiceEmLibraEsterlina;
    cout << "Libra Esterlina..." << conversao << endl;
}

```
### 25. Faça um programa que receba uma hora (uma variável para hora e outra para minutos), calcule e mostre:

### a) a hora digitada convertida em minutos;
#### Algoritmo:
```
Algoritmo 25a
 hora, minutos, qFinalHora: real

Inicio
  escreva("Por favor informe as horas e minutos de forma separada! ")
  escreva("------------ ")
  escreva("Digite uma quantidade de horas qualquer ")
  leia(hora)
  escreva("Digite uma quantidade de horas minutos ")
  leia(minutos)
  qFinalHora = hora + (minutos/60)
  escreva("------------")
  escreva("A hora calculada será + qFinalHora + " horas")
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main(){
    float hora, minutos, qFinalHora;
    cout << "Por favor informe as horas e minutos de forma separada! " << endl;
    cout << "------------------------------------------------------ "<< endl;
    cout <<  "Digite uma quantidade de horas qualquer ";
    cin >> hora;
    cout << "Digite uma quantidade de horas minutos ";
    cin >> minutos;
    qFinalHora = hora + (minutos/60);
    cout << "------------" << endl;
    cout << "A hora calculada será " << qFinalHora << " horas";
}
```
### b) o total dos minutos, ou seja, os minutos digitados mais a conversão anterior;

#### Algoritmo:
```
Algoritmo 25b
 hora, minutos, qFinalMinutos: real

Inicio
  escreva("Por favor informe as horas e minutos de forma separada! ")
  escreva("------------ ")
  escreva("Digite uma quantidade de horas qualquer ")
  leia(hora)
  escreva("Digite uma quantidade de horas minutos ")
  leia(minutos)
  qFinalMinutos = hora*60 + minutos
  escreva("------------")
  escreva("A hora calculada será + qFinalMinutos + " minutos")
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main(){
    float hora, minutos, qFinalMinutos;
    cout << "Por favor informe as horas e minutos de forma separada! " << endl;
    cout << "------------ " << endl;
    cout << "Digite uma quantidade de horas qualquer ";
    cin >> hora;
    cout << "Digite uma quantidade de horas minutos ";
    cin >>  minutos;
    qFinalMinutos = (hora * 60) + minutos;
    cout << "------------ " << endl;
    cout << "A hora calculada será " << qFinalMinutos << " minutos";
}
```
### c) o total dos minutos convertidos em segundos.

#### Algoritmo:
```
Algoritmo 25c
 hora, minutos, qFinalSegundos: real

Inicio
  escreva("Por favor informe as horas e minutos de forma separada! ")
  escreva("------------ ")
  escreva("Digite uma quantidade de horas qualquer ")
  leia(hora)
  escreva("Digite uma quantidade de horas minutos ")
  leia(minutos)
  qFinalSegundos = (hora*60 + minutos) * 60
  escreva("------------")
  escreva("A hora calculada será + qFinalSegundos + " segundos")
Fim
```
#### Em C++:
```
#include <iostream>
using namespace std;

int main(){
    float hora, minutos, qFinalSegundos;
    cout << "Por favor informe as horas e minutos de forma separada! " << endl;
    cout << "------------ " << endl;
    cout << "Digite uma quantidade de horas qualquer ";
    cin >> hora;
    cout << "Digite uma quantidade de horas minutos ";
    cin >> minutos;
    qFinalSegundos = ((hora*60) + minutos) * 60;
    cout << "------------" << endl;
    cout << "A hora calculada será "  << qFinalSegundos << " segundos";
}

```
