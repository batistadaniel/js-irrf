Algoritmo "Imposto de Renda"
// Disciplina   : [Linguagem e Lógica de Programação]
// Professor   : Kelly Bispo
// Descrição   : Imposto de Renda
// Autor(a)    : Daniel BATISTA
// Data atual  : 21/08/2024
Var
// Seção de Declarações das variáveis 
salario, faixa2, faixa3, faixa4, faixa5, deducao2, deducao3, deducao4, deducao5, resultado  : real



Inicio
// Seção de Comandos, procedimento, funções, operadores, etc... 

faixa2 <- 0.075
faixa3 <- 0.15
faixa4 <- 0.225
faixa5 <- 0.275

deducao2 <- 169.44
deducao3 <- 381.44
deducao4 <- 662.77
deducao5 <- 896

escreva("Qual e o salario? R$ ")
leia(salario)

se (salario < 2259.2) entao
escreval("Isento de IRRF!!!")

senao
se (salario >= 2259.21) e (salario <= 2826.65) entao
resultado <- (salario * faixa2) - deducao2
escreval("IRRF e de R$ ", resultado)

senao
se (salario >= 2826.66) e (salario <= 3751.05) entao
resultado <- (salario * faixa3) - deducao3
escreval("IRRF e de R$ ", resultado)

senao
se (salario >= 3751.06) e (salario <= 4664.68) entao
resultado <- (salario * faixa4) - deducao4
escreval("IRRF e de R$ ", resultado)

senao
se (salario > 4664.68) entao
resultado <- (salario * faixa5) - deducao5
escreval("IRRF e de R$ ", resultado)

fimse
fimse
fimse
fimse
fimse

Fimalgoritmo
function calculaIrrf(salarioMensal){
    let faixa2 = 0.075;
    let faixa3 = 0.15;
    let faixa4 = 0.225;
    let faixa5 = 0.275;
    
    let vlrIrrf = 0;
    
    let isento = 2259.2;
    
    let minFaixa2 = 2259.21;
    let maxFaixa2 = 2826.65;
    
    let minFaixa3 = 2826.66;
    let maxFaixa3 = 3751.05;
    
    let minFaixa4 = 3751.06;
    let maxFaixa4 = 4664.68;
    
    let minFaixa5 = maxFaixa4;
    let maxFaixa5 = Infinity; 
    
    let deducaoFaixa2 = 169.44;
    let deducaoFaixa3 = 381.44;
    let deducaoFaixa4 = 662.77;
    let deducaoFaixa5 = 896;
    
    if (salarioMensal <= isento){
        console.log("Isento de IRRF!");
    } else if (salarioMensal >= minFaixa2 && salarioMensal <= maxFaixa2){
        vlrIrrf = (salarioMensal * faixa2) - deducaoFaixa2;
        console.log(vlrIrrf.toFixed(2));
    } else if (salarioMensal >= minFaixa3 && salarioMensal <= maxFaixa3){
        vlrIrrf = (salarioMensal * faixa3) - deducaoFaixa3;
        console.log(vlrIrrf.toFixed(2));
    } else if (salarioMensal >= minFaixa4 && salarioMensal <= maxFaixa4){
        vlrIrrf = (salarioMensal * faixa4) - deducaoFaixa4;
        console.log(vlrIrrf.toFixed(2));
    } else if (salarioMensal >= minFaixa5){
        vlrIrrf = (salarioMensal * faixa5) - deducaoFaixa5;
        console.log(vlrIrrf.toFixed(2));
    }
}

calculaIrrf(2500);
https://pt.stackoverflow.com/questions/421270/como-criar-uma-m%C3%A1scara-para-moeda-brasileira-com-limite-de-caracteres
