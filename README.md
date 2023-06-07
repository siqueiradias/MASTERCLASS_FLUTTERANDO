# MASTERCLASS_FLUTTERANDO
Turma 8 - MASTERCLASS - iniciante.

## Desafios:
---
### Desafio 01: IMC
O (IMC) índice de massa corporal é baseado na altura e peso do individuo. 
O calculo é representado por Dividir o peso pela Altura ao quadradro² 
 
Cria uma função que realize o calculo de IMC. 

---

### Desafio 02: Fibonacci
Na matemática, a sucessão de Fibonacci (ou sequência de Fibonacci), é uma sequência de números inteiros, começando normalmente por 0 e 1, na qual cada termo subsequente corresponde à soma dos dois anteriores. A sequência recebeu o nome do matemático italiano Leonardo de Pisa, mais conhecido por Fibonacci, que descreveu, no ano de 1202, o crescimento de uma população de coelhos, a partir desta. Esta sequência já era, no entanto, conhecida na antiguidade.
 
Implemente a sequencia fibonacci com funcões recursivamente usando o Dart. 
Boa sorte! 
Ah, não custa dizer: NÃO PESQUISE NA INTERNET SE NAO DESEJA MINAR SEU CONHECIMENTO E DÊ APENAS DICAS AOS SEUS PARES, E NÃO A REPOSTA CORRETA DE CARA. LEMBRE-SE QUE INFORMAÇÃO < CONHECIMENTO.  
E estamos aqui pra conseguir conhecimento, informação tem muito na internet.

---

### Desafio 03: Regra de 3
Uma das coisas mais úteis que aprendemos no ensino médio é a "Regra de 3".
Consiste quando temos 3 valores e precisamos saber o quarto.
Geralmente temos dois grupos, e o calculo é feito multiplicando paralelamente os valores entre os dois grupos. Ex:

Grupo1.1 / Grupo1.2 = Grupo2.1 / Grupo2.2

Grupo1.1 x Grupo2.2 = Grupo2.1 x Grupo1.2

Sabendo disso, crie uma função que receba 4 argumentos opcionais e que retorne a resolução da regra de 3,
levando em consideração que será considerado o argumento vário como valor a ser encontrado, logo,
poderá ter apenas um valor necessáriamente "vazio".

---

### Desafio 04: Cifra de Vigenère
Cifra de Vigenère é uma criptografia simples usada para embaralhar textos. Valores que não seja letras NÃO SÃO TRANSFORMADOS.

Crie uma classe que execute 3 regras de negócio relacionado a criptografia:
A - Gerador de Key randômica.
B - Encode (Retorne o texto criptografado)
C - Decode (Retorne o texto descriptografado).

Obs: Use apenas valores maiúsculos. Certifique-se disso! 

A. Algorítimo para Key:
Para executar o encode e decode é necessário ter uma chave que tenha valores randômicos mas que tenha a mesma quantidade de caracteres do texto a ser criptografado.

B. Encode:
Passo 1: Receba a o texto a ser criptografado e a chave em questão.
Passo 2: deve-se somar o charCode de cada letra do texto e da key em suas respectivas posições e dividir por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
Passo 3: O resultado da soma anterior é o novo char.
Lembre-se: Valores não alfabetos não devem ser transformados.

C. Decode:
Passo 1: Receba a o texto criptografado e a chave.
Passo 2: deve-se subtrair o charCode de cada letra do texto e da key em suas respectivas posições somando o resultado com 26. O resultado deve ser dividido por 26. O RESTO dessa divisão deve ser somado com o CharCode da letra A.
Passo 3: O resultado da soma anterior é o  char descriptografado.
